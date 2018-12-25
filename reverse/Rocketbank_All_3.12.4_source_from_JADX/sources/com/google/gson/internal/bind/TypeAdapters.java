package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import org.slf4j.Marker;

public final class TypeAdapters {
    public static final TypeAdapter<AtomicBoolean> ATOMIC_BOOLEAN = new C12589().nullSafe();
    public static final TypeAdapterFactory ATOMIC_BOOLEAN_FACTORY;
    public static final TypeAdapter<AtomicInteger> ATOMIC_INTEGER = new C12578().nullSafe();
    public static final TypeAdapter<AtomicIntegerArray> ATOMIC_INTEGER_ARRAY = new TypeAdapter<AtomicIntegerArray>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
            jsonWriter.beginArray();
            int length = atomicIntegerArray.length();
            for (int i = 0; i < length; i++) {
                jsonWriter.value((long) atomicIntegerArray.get(i));
            }
            jsonWriter.endArray();
        }

        private static AtomicIntegerArray read(JsonReader jsonReader) throws IOException {
            List arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                try {
                    arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                } catch (Throwable e) {
                    throw new JsonSyntaxException(e);
                }
            }
            jsonReader.endArray();
            jsonReader = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(jsonReader);
            for (int i = 0; i < jsonReader; i++) {
                atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
            }
            return atomicIntegerArray;
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_INTEGER_ARRAY_FACTORY;
    public static final TypeAdapterFactory ATOMIC_INTEGER_FACTORY;
    public static final TypeAdapter<BigDecimal> BIG_DECIMAL = new TypeAdapter<BigDecimal>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((BigDecimal) obj);
        }

        private static BigDecimal read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigDecimal(jsonReader.nextString());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    };
    public static final TypeAdapter<BigInteger> BIG_INTEGER = new TypeAdapter<BigInteger>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((BigInteger) obj);
        }

        private static BigInteger read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigInteger(jsonReader.nextString());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    };
    public static final TypeAdapter<BitSet> BIT_SET = new C12502().nullSafe();
    public static final TypeAdapterFactory BIT_SET_FACTORY;
    public static final TypeAdapter<Boolean> BOOLEAN = new C12523();
    public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING = new C12534();
    public static final TypeAdapterFactory BOOLEAN_FACTORY;
    public static final TypeAdapter<Number> BYTE = new C12545();
    public static final TypeAdapterFactory BYTE_FACTORY;
    public static final TypeAdapter<Calendar> CALENDAR = new TypeAdapter<Calendar>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Calendar calendar = (Calendar) obj;
            if (calendar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("year");
            jsonWriter.value((long) calendar.get(1));
            jsonWriter.name("month");
            jsonWriter.value((long) calendar.get(2));
            jsonWriter.name("dayOfMonth");
            jsonWriter.value((long) calendar.get(5));
            jsonWriter.name("hourOfDay");
            jsonWriter.value((long) calendar.get(11));
            jsonWriter.name("minute");
            jsonWriter.value((long) calendar.get(12));
            jsonWriter.name("second");
            jsonWriter.value((long) calendar.get(13));
            jsonWriter.endObject();
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i = 0;
            int i2 = i;
            int i3 = i2;
            int i4 = i3;
            int i5 = i4;
            int i6 = i5;
            while (jsonReader.peek() != JsonToken.END_OBJECT) {
                String nextName = jsonReader.nextName();
                int nextInt = jsonReader.nextInt();
                if ("year".equals(nextName)) {
                    i = nextInt;
                } else if ("month".equals(nextName)) {
                    i2 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i3 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i4 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i5 = nextInt;
                } else if ("second".equals(nextName)) {
                    i6 = nextInt;
                }
            }
            jsonReader.endObject();
            return new GregorianCalendar(i, i2, i3, i4, i5, i6);
        }
    };
    public static final TypeAdapterFactory CALENDAR_FACTORY;
    public static final TypeAdapter<Character> CHARACTER = new TypeAdapter<Character>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Character ch = (Character) obj;
            jsonWriter.value(ch == null ? null : String.valueOf(ch));
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader = jsonReader.nextString();
            if (jsonReader.length() == 1) {
                return Character.valueOf(jsonReader.charAt(0));
            }
            throw new JsonSyntaxException("Expecting character, got: ".concat(String.valueOf(jsonReader)));
        }
    };
    public static final TypeAdapterFactory CHARACTER_FACTORY;
    public static final TypeAdapter<Class> CLASS = new C12481().nullSafe();
    public static final TypeAdapterFactory CLASS_FACTORY;
    public static final TypeAdapter<Currency> CURRENCY = new TypeAdapter<Currency>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value(((Currency) obj).getCurrencyCode());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            return Currency.getInstance(jsonReader.nextString());
        }
    }.nullSafe();
    public static final TypeAdapterFactory CURRENCY_FACTORY;
    public static final TypeAdapter<Number> DOUBLE = new TypeAdapter<Number>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapterFactory ENUM_FACTORY = new TypeAdapterFactory() {
        public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            gson = typeToken.getRawType();
            if (Enum.class.isAssignableFrom(gson) != null) {
                if (gson != Enum.class) {
                    if (gson.isEnum() == null) {
                        gson = gson.getSuperclass();
                    }
                    return new EnumTypeAdapter(gson);
                }
            }
            return null;
        }
    };
    public static final TypeAdapter<Number> FLOAT = new TypeAdapter<Number>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapter<InetAddress> INET_ADDRESS = new TypeAdapter<InetAddress>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            InetAddress inetAddress = (InetAddress) obj;
            jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return InetAddress.getByName(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
    public static final TypeAdapter<Number> INTEGER = new C12567();
    public static final TypeAdapterFactory INTEGER_FACTORY;
    public static final TypeAdapter<JsonElement> JSON_ELEMENT = new TypeAdapter<JsonElement>() {
        private JsonElement read(JsonReader jsonReader) throws IOException {
            JsonElement jsonArray;
            switch (jsonReader.peek()) {
                case NUMBER:
                    return new JsonPrimitive(new LazilyParsedNumber(jsonReader.nextString()));
                case BOOLEAN:
                    return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                case STRING:
                    return new JsonPrimitive(jsonReader.nextString());
                case NULL:
                    jsonReader.nextNull();
                    return JsonNull.INSTANCE;
                case BEGIN_ARRAY:
                    jsonArray = new JsonArray();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonArray.add(read(jsonReader));
                    }
                    jsonReader.endArray();
                    return jsonArray;
                case BEGIN_OBJECT:
                    jsonArray = new JsonObject();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        jsonArray.add(jsonReader.nextName(), read(jsonReader));
                    }
                    jsonReader.endObject();
                    return jsonArray;
                default:
                    throw new IllegalArgumentException();
            }
        }

        private void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
            if (jsonElement != null) {
                if (!(jsonElement instanceof JsonNull)) {
                    boolean z = jsonElement instanceof JsonPrimitive;
                    if (!z) {
                        z = jsonElement instanceof JsonArray;
                        if (z) {
                            jsonWriter.beginArray();
                            if (z) {
                                jsonElement = ((JsonArray) jsonElement).iterator();
                                while (jsonElement.hasNext()) {
                                    write(jsonWriter, (JsonElement) jsonElement.next());
                                }
                                jsonWriter.endArray();
                                return;
                            }
                            throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
                        }
                        z = jsonElement instanceof JsonObject;
                        if (z) {
                            jsonWriter.beginObject();
                            if (z) {
                                for (Entry entry : ((JsonObject) jsonElement).entrySet()) {
                                    jsonWriter.name((String) entry.getKey());
                                    write(jsonWriter, (JsonElement) entry.getValue());
                                }
                                jsonWriter.endObject();
                                return;
                            }
                            throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement)));
                        }
                        StringBuilder stringBuilder = new StringBuilder("Couldn't write ");
                        stringBuilder.append(jsonElement.getClass());
                        throw new IllegalArgumentException(stringBuilder.toString());
                    } else if (z) {
                        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
                        if (jsonPrimitive.isNumber()) {
                            jsonWriter.value(jsonPrimitive.getAsNumber());
                            return;
                        } else if (jsonPrimitive.isBoolean()) {
                            jsonWriter.value(jsonPrimitive.getAsBoolean());
                            return;
                        } else {
                            jsonWriter.value(jsonPrimitive.getAsString());
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(jsonElement)));
                    }
                }
            }
            jsonWriter.nullValue();
        }
    };
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
    public static final TypeAdapter<Locale> LOCALE = new TypeAdapter<Locale>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Locale locale = (Locale) obj;
            jsonWriter.value(locale == null ? null : locale.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
            jsonReader = stringTokenizer.hasMoreElements() != null ? stringTokenizer.nextToken() : null;
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (stringTokenizer.hasMoreElements()) {
                str = stringTokenizer.nextToken();
            }
            if (nextToken == null && str == null) {
                return new Locale(jsonReader);
            }
            if (str == null) {
                return new Locale(jsonReader, nextToken);
            }
            return new Locale(jsonReader, nextToken, str);
        }
    };
    public static final TypeAdapterFactory LOCALE_FACTORY;
    public static final TypeAdapter<Number> LONG = new TypeAdapter<Number>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        private static Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    };
    public static final TypeAdapter<Number> NUMBER = new TypeAdapter<Number>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            int i = AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[peek.ordinal()];
            if (i != 1) {
                switch (i) {
                    case 3:
                        break;
                    case 4:
                        jsonReader.nextNull();
                        return null;
                    default:
                        throw new JsonSyntaxException("Expecting number, got: ".concat(String.valueOf(peek)));
                }
            }
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    };
    public static final TypeAdapterFactory NUMBER_FACTORY;
    public static final TypeAdapter<Number> SHORT = new C12556();
    public static final TypeAdapterFactory SHORT_FACTORY;
    public static final TypeAdapter<String> STRING = new TypeAdapter<String>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((String) obj);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            } else if (peek == JsonToken.BOOLEAN) {
                return Boolean.toString(jsonReader.nextBoolean());
            } else {
                return jsonReader.nextString();
            }
        }
    };
    public static final TypeAdapter<StringBuffer> STRING_BUFFER = new TypeAdapter<StringBuffer>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            StringBuffer stringBuffer = (StringBuffer) obj;
            jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuffer(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
    public static final TypeAdapter<StringBuilder> STRING_BUILDER = new TypeAdapter<StringBuilder>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            StringBuilder stringBuilder = (StringBuilder) obj;
            jsonWriter.value(stringBuilder == null ? null : stringBuilder.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuilder(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
    public static final TypeAdapterFactory STRING_FACTORY;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY = new TypeAdapterFactory() {
        public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() != Timestamp.class) {
                return null;
            }
            gson = gson.getAdapter(TypeToken.get(Date.class));
            return new TypeAdapter<Timestamp>() {
                public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
                    gson.write(jsonWriter, (Timestamp) obj);
                }

                public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
                    Date date = (Date) gson.read(jsonReader);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }
            };
        }
    };
    public static final TypeAdapter<URI> URI = new TypeAdapter<URI>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            URI uri = (URI) obj;
            jsonWriter.value(uri == null ? null : uri.toASCIIString());
        }

        private static URI read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                jsonReader = jsonReader.nextString();
                if ("null".equals(jsonReader)) {
                    return null;
                }
                return new URI(jsonReader);
            } catch (Throwable e) {
                throw new JsonIOException(e);
            }
        }
    };
    public static final TypeAdapterFactory URI_FACTORY;
    public static final TypeAdapter<URL> URL = new TypeAdapter<URL>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            URL url = (URL) obj;
            jsonWriter.value(url == null ? null : url.toExternalForm());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader = jsonReader.nextString();
            if ("null".equals(jsonReader)) {
                return null;
            }
            return new URL(jsonReader);
        }
    };
    public static final TypeAdapterFactory URL_FACTORY;
    public static final TypeAdapter<UUID> UUID = new TypeAdapter<UUID>() {
        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            UUID uuid = (UUID) obj;
            jsonWriter.value(uuid == null ? null : uuid.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return UUID.fromString(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    };
    public static final TypeAdapterFactory UUID_FACTORY;

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$1 */
    static class C12481 extends TypeAdapter<Class> {
        C12481() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Class cls = (Class) obj;
            StringBuilder stringBuilder = new StringBuilder("Attempted to serialize java.lang.Class: ");
            stringBuilder.append(cls.getName());
            stringBuilder.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(stringBuilder.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$2 */
    static class C12502 extends TypeAdapter<BitSet> {
        C12502() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            BitSet bitSet = (BitSet) obj;
            jsonWriter.beginArray();
            int length = bitSet.length();
            for (int i = 0; i < length; i++) {
                jsonWriter.value((long) bitSet.get(i));
            }
            jsonWriter.endArray();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static java.util.BitSet read(com.google.gson.stream.JsonReader r6) throws java.io.IOException {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = new java.util.BitSet;
            r0.<init>();
            r6.beginArray();
            r1 = r6.peek();
            r2 = 0;
            r3 = r2;
        L_0x000e:
            r4 = com.google.gson.stream.JsonToken.END_ARRAY;
            if (r1 == r4) goto L_0x0062;
        L_0x0012:
            r4 = com.google.gson.internal.bind.TypeAdapters.AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken;
            r5 = r1.ordinal();
            r4 = r4[r5];
            r5 = 1;
            switch(r4) {
                case 1: goto L_0x0050;
                case 2: goto L_0x004b;
                case 3: goto L_0x002e;
                default: goto L_0x001e;
            };
        L_0x001e:
            r6 = new com.google.gson.JsonSyntaxException;
            r0 = "Invalid bitset value type: ";
            r1 = java.lang.String.valueOf(r1);
            r0 = r0.concat(r1);
            r6.<init>(r0);
            throw r6;
        L_0x002e:
            r1 = r6.nextString();
            r4 = java.lang.Integer.parseInt(r1);	 Catch:{ NumberFormatException -> 0x003b }
            if (r4 == 0) goto L_0x0039;
        L_0x0038:
            goto L_0x0056;
        L_0x0039:
            r5 = r2;
            goto L_0x0056;
        L_0x003b:
            r6 = new com.google.gson.JsonSyntaxException;
            r0 = "Error: Expecting: bitset number value (1, 0), Found: ";
            r1 = java.lang.String.valueOf(r1);
            r0 = r0.concat(r1);
            r6.<init>(r0);
            throw r6;
        L_0x004b:
            r5 = r6.nextBoolean();
            goto L_0x0056;
        L_0x0050:
            r1 = r6.nextInt();
            if (r1 == 0) goto L_0x0039;
        L_0x0056:
            if (r5 == 0) goto L_0x005b;
        L_0x0058:
            r0.set(r3);
        L_0x005b:
            r3 = r3 + 1;
            r1 = r6.peek();
            goto L_0x000e;
        L_0x0062:
            r6.endArray();
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.2.read(com.google.gson.stream.JsonReader):java.util.BitSet");
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$3 */
    static class C12523 extends TypeAdapter<Boolean> {
        C12523() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Boolean) obj);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            } else if (jsonReader.peek() == JsonToken.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
            } else {
                return Boolean.valueOf(jsonReader.nextBoolean());
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$4 */
    static class C12534 extends TypeAdapter<Boolean> {
        C12534() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Boolean bool = (Boolean) obj;
            jsonWriter.value(bool == null ? "null" : bool.toString());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Boolean.valueOf(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$5 */
    static class C12545 extends TypeAdapter<Number> {
        C12545() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        private static Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) jsonReader.nextInt());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$6 */
    static class C12556 extends TypeAdapter<Number> {
        C12556() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        private static Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) jsonReader.nextInt());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$7 */
    static class C12567 extends TypeAdapter<Number> {
        C12567() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((Number) obj);
        }

        private static Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$8 */
    static class C12578 extends TypeAdapter<AtomicInteger> {
        C12578() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value((long) ((AtomicInteger) obj).get());
        }

        private static AtomicInteger read(JsonReader jsonReader) throws IOException {
            try {
                return new AtomicInteger(jsonReader.nextInt());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$9 */
    static class C12589 extends TypeAdapter<AtomicBoolean> {
        C12589() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            jsonWriter.value(((AtomicBoolean) obj).get());
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            return new AtomicBoolean(jsonReader.nextBoolean());
        }
    }

    static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        private final Map<T, String> constantToName = new HashMap();
        private final Map<String, T> nameToConstant = new HashMap();

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Enum enumR = (Enum) obj;
            jsonWriter.value(enumR == null ? null : (String) this.constantToName.get(enumR));
        }

        public EnumTypeAdapter(Class<T> cls) {
            try {
                for (Enum enumR : (Enum[]) cls.getEnumConstants()) {
                    Object name = enumR.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        name = serializedName.value();
                        for (Object put : serializedName.alternate()) {
                            this.nameToConstant.put(put, enumR);
                        }
                    }
                    this.nameToConstant.put(name, enumR);
                    this.constantToName.put(enumR, name);
                }
            } catch (Class<T> cls2) {
                throw new AssertionError(cls2);
            }
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return (Enum) this.nameToConstant.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }
    }

    static {
        final Class cls = Class.class;
        final TypeAdapter typeAdapter = CLASS;
        CLASS_FACTORY = new TypeAdapterFactory() {
            public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                return typeToken.getRawType() == r1 ? r2 : null;
            }

            public final String toString() {
                StringBuilder stringBuilder = new StringBuilder("Factory[type=");
                stringBuilder.append(r1.getName());
                stringBuilder.append(",adapter=");
                stringBuilder.append(r2);
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        };
        cls = BitSet.class;
        typeAdapter = BIT_SET;
        BIT_SET_FACTORY = /* anonymous class already generated */;
        cls = Boolean.TYPE;
        final Class cls2 = Boolean.class;
        final TypeAdapter typeAdapter2 = BOOLEAN;
        BOOLEAN_FACTORY = new TypeAdapterFactory() {
            public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                gson = typeToken.getRawType();
                if (gson != r1) {
                    if (gson != r2) {
                        return null;
                    }
                }
                return r3;
            }

            public final String toString() {
                StringBuilder stringBuilder = new StringBuilder("Factory[type=");
                stringBuilder.append(r2.getName());
                stringBuilder.append(Marker.ANY_NON_NULL_MARKER);
                stringBuilder.append(r1.getName());
                stringBuilder.append(",adapter=");
                stringBuilder.append(r3);
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        };
        cls = Byte.TYPE;
        cls2 = Byte.class;
        typeAdapter2 = BYTE;
        BYTE_FACTORY = /* anonymous class already generated */;
        cls = Short.TYPE;
        cls2 = Short.class;
        typeAdapter2 = SHORT;
        SHORT_FACTORY = /* anonymous class already generated */;
        cls = Integer.TYPE;
        cls2 = Integer.class;
        typeAdapter2 = INTEGER;
        INTEGER_FACTORY = /* anonymous class already generated */;
        cls = AtomicInteger.class;
        typeAdapter = ATOMIC_INTEGER;
        ATOMIC_INTEGER_FACTORY = /* anonymous class already generated */;
        cls = AtomicBoolean.class;
        typeAdapter = ATOMIC_BOOLEAN;
        ATOMIC_BOOLEAN_FACTORY = /* anonymous class already generated */;
        cls = AtomicIntegerArray.class;
        typeAdapter = ATOMIC_INTEGER_ARRAY;
        ATOMIC_INTEGER_ARRAY_FACTORY = /* anonymous class already generated */;
        cls = Number.class;
        typeAdapter = NUMBER;
        NUMBER_FACTORY = /* anonymous class already generated */;
        cls = Character.TYPE;
        cls2 = Character.class;
        typeAdapter2 = CHARACTER;
        CHARACTER_FACTORY = /* anonymous class already generated */;
        cls = String.class;
        typeAdapter = STRING;
        STRING_FACTORY = /* anonymous class already generated */;
        cls = StringBuilder.class;
        typeAdapter = STRING_BUILDER;
        STRING_BUILDER_FACTORY = /* anonymous class already generated */;
        cls = StringBuffer.class;
        typeAdapter = STRING_BUFFER;
        STRING_BUFFER_FACTORY = /* anonymous class already generated */;
        cls = URL.class;
        typeAdapter = URL;
        URL_FACTORY = /* anonymous class already generated */;
        cls = URI.class;
        typeAdapter = URI;
        URI_FACTORY = /* anonymous class already generated */;
        cls = InetAddress.class;
        typeAdapter = INET_ADDRESS;
        INET_ADDRESS_FACTORY = new TypeAdapterFactory() {
            public final <T2> TypeAdapter<T2> create(Gson gson, TypeToken<T2> typeToken) {
                gson = typeToken.getRawType();
                if (cls.isAssignableFrom(gson) == null) {
                    return null;
                }
                return new TypeAdapter<T1>() {
                    public final void write(JsonWriter jsonWriter, T1 t1) throws IOException {
                        typeAdapter.write(jsonWriter, t1);
                    }

                    public final T1 read(JsonReader jsonReader) throws IOException {
                        jsonReader = typeAdapter.read(jsonReader);
                        if (jsonReader == null || gson.isInstance(jsonReader)) {
                            return jsonReader;
                        }
                        StringBuilder stringBuilder = new StringBuilder("Expected a ");
                        stringBuilder.append(gson.getName());
                        stringBuilder.append(" but was ");
                        stringBuilder.append(jsonReader.getClass().getName());
                        throw new JsonSyntaxException(stringBuilder.toString());
                    }
                };
            }

            public final String toString() {
                StringBuilder stringBuilder = new StringBuilder("Factory[typeHierarchy=");
                stringBuilder.append(cls.getName());
                stringBuilder.append(",adapter=");
                stringBuilder.append(typeAdapter);
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        };
        cls = UUID.class;
        typeAdapter = UUID;
        UUID_FACTORY = /* anonymous class already generated */;
        cls = Currency.class;
        typeAdapter = CURRENCY;
        CURRENCY_FACTORY = /* anonymous class already generated */;
        cls = Calendar.class;
        cls2 = GregorianCalendar.class;
        typeAdapter2 = CALENDAR;
        CALENDAR_FACTORY = new TypeAdapterFactory() {
            public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                gson = typeToken.getRawType();
                if (gson != cls) {
                    if (gson != cls2) {
                        return null;
                    }
                }
                return typeAdapter2;
            }

            public final String toString() {
                StringBuilder stringBuilder = new StringBuilder("Factory[type=");
                stringBuilder.append(cls.getName());
                stringBuilder.append(Marker.ANY_NON_NULL_MARKER);
                stringBuilder.append(cls2.getName());
                stringBuilder.append(",adapter=");
                stringBuilder.append(typeAdapter2);
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        };
        cls = Locale.class;
        typeAdapter = LOCALE;
        LOCALE_FACTORY = /* anonymous class already generated */;
        cls = JsonElement.class;
        typeAdapter = JSON_ELEMENT;
        JSON_ELEMENT_FACTORY = /* anonymous class already generated */;
    }

    public static <TT> TypeAdapterFactory newFactory(final TypeToken<TT> typeToken, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() {
            public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                return typeToken.equals(typeToken) != null ? typeAdapter : null;
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return /* anonymous class already generated */;
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return /* anonymous class already generated */;
    }
}
