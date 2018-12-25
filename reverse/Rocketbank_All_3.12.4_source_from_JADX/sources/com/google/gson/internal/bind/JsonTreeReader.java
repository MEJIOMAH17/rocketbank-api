package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map.Entry;

public final class JsonTreeReader extends JsonReader {
    private static final Object SENTINEL_CLOSED = new Object();
    private static final Reader UNREADABLE_READER = new C06481();
    private int[] pathIndices = new int[32];
    private String[] pathNames = new String[32];
    private Object[] stack = new Object[32];
    private int stackSize = 0;

    /* renamed from: com.google.gson.internal.bind.JsonTreeReader$1 */
    static class C06481 extends Reader {
        C06481() {
        }

        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        public final void close() throws IOException {
            throw new AssertionError();
        }
    }

    public JsonTreeReader(JsonElement jsonElement) {
        super(UNREADABLE_READER);
        push(jsonElement);
    }

    public final void beginArray() throws IOException {
        expect(JsonToken.BEGIN_ARRAY);
        push(((JsonArray) this.stack[this.stackSize - 1]).iterator());
        this.pathIndices[this.stackSize - 1] = 0;
    }

    public final void endArray() throws IOException {
        expect(JsonToken.END_ARRAY);
        this.stackSize--;
        this.stack[this.stackSize] = null;
        this.stackSize--;
        this.stack[this.stackSize] = null;
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    public final void beginObject() throws IOException {
        expect(JsonToken.BEGIN_OBJECT);
        push(((JsonObject) this.stack[this.stackSize - 1]).entrySet().iterator());
    }

    public final void endObject() throws IOException {
        expect(JsonToken.END_OBJECT);
        this.stackSize--;
        this.stack[this.stackSize] = null;
        this.stackSize--;
        this.stack[this.stackSize] = null;
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    public final boolean hasNext() throws IOException {
        JsonToken peek = peek();
        return (peek == JsonToken.END_OBJECT || peek == JsonToken.END_ARRAY) ? false : true;
    }

    public final JsonToken peek() throws IOException {
        while (this.stackSize != 0) {
            Object obj = this.stack[this.stackSize - 1];
            if (obj instanceof Iterator) {
                boolean z = this.stack[this.stackSize - 2] instanceof JsonObject;
                Iterator it = (Iterator) obj;
                if (!it.hasNext()) {
                    return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
                } else {
                    if (z) {
                        return JsonToken.NAME;
                    }
                    push(it.next());
                }
            } else if (obj instanceof JsonObject) {
                return JsonToken.BEGIN_OBJECT;
            } else {
                if (obj instanceof JsonArray) {
                    return JsonToken.BEGIN_ARRAY;
                }
                if (obj instanceof JsonPrimitive) {
                    JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
                    if (jsonPrimitive.isString()) {
                        return JsonToken.STRING;
                    }
                    if (jsonPrimitive.isBoolean()) {
                        return JsonToken.BOOLEAN;
                    }
                    if (jsonPrimitive.isNumber()) {
                        return JsonToken.NUMBER;
                    }
                    throw new AssertionError();
                } else if (obj instanceof JsonNull) {
                    return JsonToken.NULL;
                } else {
                    if (obj == SENTINEL_CLOSED) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return JsonToken.END_DOCUMENT;
    }

    private void expect(JsonToken jsonToken) throws IOException {
        if (peek() != jsonToken) {
            StringBuilder stringBuilder = new StringBuilder("Expected ");
            stringBuilder.append(jsonToken);
            stringBuilder.append(" but was ");
            stringBuilder.append(peek());
            jsonToken = new StringBuilder(" at path ");
            jsonToken.append(getPath());
            stringBuilder.append(jsonToken.toString());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public final String nextName() throws IOException {
        expect(JsonToken.NAME);
        Entry entry = (Entry) ((Iterator) this.stack[this.stackSize - 1]).next();
        String str = (String) entry.getKey();
        this.pathNames[this.stackSize - 1] = str;
        push(entry.getValue());
        return str;
    }

    public final String nextString() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.STRING || peek == JsonToken.NUMBER) {
            Object[] objArr = this.stack;
            int i = this.stackSize - 1;
            this.stackSize = i;
            Object obj = objArr[i];
            this.stack[this.stackSize] = null;
            String asString = ((JsonPrimitive) obj).getAsString();
            if (this.stackSize > 0) {
                int[] iArr = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asString;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected ");
        stringBuilder.append(JsonToken.STRING);
        stringBuilder.append(" but was ");
        stringBuilder.append(peek);
        StringBuilder stringBuilder2 = new StringBuilder(" at path ");
        stringBuilder2.append(getPath());
        stringBuilder.append(stringBuilder2.toString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public final boolean nextBoolean() throws IOException {
        expect(JsonToken.BOOLEAN);
        Object[] objArr = this.stack;
        int i = this.stackSize - 1;
        this.stackSize = i;
        Object obj = objArr[i];
        this.stack[this.stackSize] = null;
        boolean asBoolean = ((JsonPrimitive) obj).getAsBoolean();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asBoolean;
    }

    public final void nextNull() throws IOException {
        expect(JsonToken.NULL);
        this.stackSize--;
        this.stack[this.stackSize] = null;
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    public final double nextDouble() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            double asDouble = ((JsonPrimitive) this.stack[this.stackSize - 1]).getAsDouble();
            if (isLenient() || !(Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
                this.stackSize--;
                this.stack[this.stackSize] = null;
                if (this.stackSize > 0) {
                    int[] iArr = this.pathIndices;
                    int i = this.stackSize - 1;
                    iArr[i] = iArr[i] + 1;
                }
                return asDouble;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(asDouble)));
        }
        StringBuilder stringBuilder = new StringBuilder("Expected ");
        stringBuilder.append(JsonToken.NUMBER);
        stringBuilder.append(" but was ");
        stringBuilder.append(peek);
        StringBuilder stringBuilder2 = new StringBuilder(" at path ");
        stringBuilder2.append(getPath());
        stringBuilder.append(stringBuilder2.toString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public final long nextLong() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            long asLong = ((JsonPrimitive) this.stack[this.stackSize - 1]).getAsLong();
            this.stackSize--;
            this.stack[this.stackSize] = null;
            if (this.stackSize > 0) {
                int[] iArr = this.pathIndices;
                int i = this.stackSize - 1;
                iArr[i] = iArr[i] + 1;
            }
            return asLong;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected ");
        stringBuilder.append(JsonToken.NUMBER);
        stringBuilder.append(" but was ");
        stringBuilder.append(peek);
        StringBuilder stringBuilder2 = new StringBuilder(" at path ");
        stringBuilder2.append(getPath());
        stringBuilder.append(stringBuilder2.toString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public final int nextInt() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            int asInt = ((JsonPrimitive) this.stack[this.stackSize - 1]).getAsInt();
            this.stackSize--;
            this.stack[this.stackSize] = null;
            if (this.stackSize > 0) {
                int[] iArr = this.pathIndices;
                int i = this.stackSize - 1;
                iArr[i] = iArr[i] + 1;
            }
            return asInt;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected ");
        stringBuilder.append(JsonToken.NUMBER);
        stringBuilder.append(" but was ");
        stringBuilder.append(peek);
        StringBuilder stringBuilder2 = new StringBuilder(" at path ");
        stringBuilder2.append(getPath());
        stringBuilder.append(stringBuilder2.toString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public final void close() throws IOException {
        this.stack = new Object[]{SENTINEL_CLOSED};
        this.stackSize = 1;
    }

    public final void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.pathNames[this.stackSize - 2] = "null";
        } else {
            this.stackSize--;
            this.stack[this.stackSize] = null;
            if (this.stackSize > 0) {
                this.pathNames[this.stackSize - 1] = "null";
            }
        }
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    public final String toString() {
        return getClass().getSimpleName();
    }

    public final void promoteNameToValue() throws IOException {
        expect(JsonToken.NAME);
        Entry entry = (Entry) ((Iterator) this.stack[this.stackSize - 1]).next();
        push(entry.getValue());
        push(new JsonPrimitive((String) entry.getKey()));
    }

    private void push(Object obj) {
        if (this.stackSize == this.stack.length) {
            Object obj2 = new Object[(this.stackSize << 1)];
            Object obj3 = new int[(this.stackSize << 1)];
            Object obj4 = new String[(this.stackSize << 1)];
            System.arraycopy(this.stack, 0, obj2, 0, this.stackSize);
            System.arraycopy(this.pathIndices, 0, obj3, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, obj4, 0, this.stackSize);
            this.stack = obj2;
            this.pathIndices = obj3;
            this.pathNames = obj4;
        }
        Object[] objArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        objArr[i] = obj;
    }

    public final String getPath() {
        StringBuilder stringBuilder = new StringBuilder("$");
        int i = 0;
        while (i < this.stackSize) {
            if (this.stack[i] instanceof JsonArray) {
                i++;
                if (this.stack[i] instanceof Iterator) {
                    stringBuilder.append('[');
                    stringBuilder.append(this.pathIndices[i]);
                    stringBuilder.append(']');
                }
            } else if (this.stack[i] instanceof JsonObject) {
                i++;
                if (this.stack[i] instanceof Iterator) {
                    stringBuilder.append('.');
                    if (this.pathNames[i] != null) {
                        stringBuilder.append(this.pathNames[i]);
                    }
                }
            }
            i++;
        }
        return stringBuilder.toString();
    }
}
