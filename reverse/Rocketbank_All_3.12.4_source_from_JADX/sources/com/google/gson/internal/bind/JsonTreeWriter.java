package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class JsonTreeWriter extends JsonWriter {
    private static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive("closed");
    private static final Writer UNWRITABLE_WRITER = new C06491();
    private String pendingName;
    private JsonElement product = JsonNull.INSTANCE;
    private final List<JsonElement> stack = new ArrayList();

    /* renamed from: com.google.gson.internal.bind.JsonTreeWriter$1 */
    static class C06491 extends Writer {
        C06491() {
        }

        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        public final void flush() throws IOException {
            throw new AssertionError();
        }

        public final void close() throws IOException {
            throw new AssertionError();
        }
    }

    public final void flush() throws IOException {
    }

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
    }

    public final JsonElement get() {
        if (this.stack.isEmpty()) {
            return this.product;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected one JSON element but was ");
        stringBuilder.append(this.stack);
        throw new IllegalStateException(stringBuilder.toString());
    }

    private void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!(jsonElement instanceof JsonNull) || getSerializeNulls()) {
                ((JsonObject) ((JsonElement) this.stack.get(this.stack.size() - 1))).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
        } else if (this.stack.isEmpty()) {
            this.product = jsonElement;
        } else {
            JsonElement jsonElement2 = (JsonElement) this.stack.get(this.stack.size() - 1);
            if (jsonElement2 instanceof JsonArray) {
                ((JsonArray) jsonElement2).add(jsonElement);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final JsonWriter beginArray() throws IOException {
        JsonElement jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
        return this;
    }

    public final JsonWriter endArray() throws IOException {
        if (!this.stack.isEmpty()) {
            if (this.pendingName == null) {
                if (((JsonElement) this.stack.get(this.stack.size() - 1)) instanceof JsonArray) {
                    this.stack.remove(this.stack.size() - 1);
                    return this;
                }
                throw new IllegalStateException();
            }
        }
        throw new IllegalStateException();
    }

    public final JsonWriter beginObject() throws IOException {
        JsonElement jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
        return this;
    }

    public final JsonWriter endObject() throws IOException {
        if (!this.stack.isEmpty()) {
            if (this.pendingName == null) {
                if (((JsonElement) this.stack.get(this.stack.size() - 1)) instanceof JsonObject) {
                    this.stack.remove(this.stack.size() - 1);
                    return this;
                }
                throw new IllegalStateException();
            }
        }
        throw new IllegalStateException();
    }

    public final JsonWriter name(String str) throws IOException {
        if (!this.stack.isEmpty()) {
            if (this.pendingName == null) {
                if (((JsonElement) this.stack.get(this.stack.size() - 1)) instanceof JsonObject) {
                    this.pendingName = str;
                    return this;
                }
                throw new IllegalStateException();
            }
        }
        throw new IllegalStateException();
    }

    public final JsonWriter nullValue() throws IOException {
        put(JsonNull.INSTANCE);
        return this;
    }

    public final JsonWriter value(boolean z) throws IOException {
        put(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    public final JsonWriter value(long j) throws IOException {
        put(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    public final void close() throws IOException {
        if (this.stack.isEmpty()) {
            this.stack.add(SENTINEL_CLOSED);
            return;
        }
        throw new IOException("Incomplete document");
    }

    public final JsonWriter value(String str) throws IOException {
        if (str == null) {
            put(JsonNull.INSTANCE);
            return this;
        }
        put(new JsonPrimitive(str));
        return this;
    }

    public final JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            put(JsonNull.INSTANCE);
            return this;
        }
        put(new JsonPrimitive(bool));
        return this;
    }

    public final JsonWriter value(Number number) throws IOException {
        if (number == null) {
            put(JsonNull.INSTANCE);
            return this;
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        put(new JsonPrimitive(number));
        return this;
    }
}
