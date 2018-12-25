package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class Gson {
    private static final TypeToken<?> NULL_KEY_SURROGATE = TypeToken.get(Object.class);
    private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls;
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final List<TypeAdapterFactory> factories;
    private final FieldNamingStrategy fieldNamingStrategy;
    private final boolean generateNonExecutableJson;
    private final boolean htmlSafe;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
    private final boolean lenient;
    private final boolean prettyPrinting;
    private final boolean serializeNulls;
    private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache;

    /* renamed from: com.google.gson.Gson$1 */
    class C12161 extends TypeAdapter<Number> {
        C12161() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.nullValue();
                return;
            }
            Gson.checkValidFloatingPoint(number.doubleValue());
            jsonWriter.value(number);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.gson.Gson$2 */
    class C12172 extends TypeAdapter<Number> {
        C12172() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.nullValue();
                return;
            }
            Gson.checkValidFloatingPoint((double) number.floatValue());
            jsonWriter.value(number);
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.gson.Gson$3 */
    static class C12183 extends TypeAdapter<Number> {
        C12183() {
        }

        public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(number.toString());
            }
        }

        public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Long.valueOf(jsonReader.nextLong());
            }
            jsonReader.nextNull();
            return null;
        }
    }

    static class FutureTypeAdapter<T> extends TypeAdapter<T> {
        private TypeAdapter<T> delegate;

        FutureTypeAdapter() {
        }

        public final void setDelegate(TypeAdapter<T> typeAdapter) {
            if (this.delegate != null) {
                throw new AssertionError();
            }
            this.delegate = typeAdapter;
        }

        public final T read(JsonReader jsonReader) throws IOException {
            if (this.delegate != null) {
                return this.delegate.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            if (this.delegate == null) {
                throw new IllegalStateException();
            }
            this.delegate.write(jsonWriter, t);
        }
    }

    public Gson() {
        this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), true, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z, LongSerializationPolicy longSerializationPolicy, List<TypeAdapterFactory> list) {
        this.calls = new ThreadLocal();
        this.typeTokenCache = new ConcurrentHashMap();
        this.constructorConstructor = new ConstructorConstructor(map);
        this.excluder = excluder;
        this.fieldNamingStrategy = fieldNamingStrategy;
        this.serializeNulls = false;
        this.generateNonExecutableJson = false;
        this.htmlSafe = z;
        this.prettyPrinting = false;
        this.lenient = false;
        map = new ArrayList();
        map.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        map.add(ObjectTypeAdapter.FACTORY);
        map.add(excluder);
        map.addAll(list);
        map.add(TypeAdapters.STRING_FACTORY);
        map.add(TypeAdapters.INTEGER_FACTORY);
        map.add(TypeAdapters.BOOLEAN_FACTORY);
        map.add(TypeAdapters.BYTE_FACTORY);
        map.add(TypeAdapters.SHORT_FACTORY);
        if (longSerializationPolicy == LongSerializationPolicy.DEFAULT) {
            z = TypeAdapters.LONG;
        } else {
            z = new C12183();
        }
        map.add(TypeAdapters.newFactory(Long.TYPE, Long.class, z));
        map.add(TypeAdapters.newFactory(Double.TYPE, Double.class, new C12161()));
        map.add(TypeAdapters.newFactory(Float.TYPE, Float.class, new C12172()));
        map.add(TypeAdapters.NUMBER_FACTORY);
        map.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
        map.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
        map.add(TypeAdapters.newFactory(AtomicLong.class, new TypeAdapter<AtomicLong>() {
            public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
                z.write(jsonWriter, Long.valueOf(((AtomicLong) obj).get()));
            }

            public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
                return new AtomicLong(((Number) z.read(jsonReader)).longValue());
            }
        }.nullSafe()));
        map.add(TypeAdapters.newFactory(AtomicLongArray.class, new TypeAdapter<AtomicLongArray>() {
            public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                jsonWriter.beginArray();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    z.write(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
                }
                jsonWriter.endArray();
            }

            public final /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
                List arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(Long.valueOf(((Number) z.read(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                jsonReader = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(jsonReader);
                for (int i = 0; i < jsonReader; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }
        }.nullSafe()));
        map.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
        map.add(TypeAdapters.CHARACTER_FACTORY);
        map.add(TypeAdapters.STRING_BUILDER_FACTORY);
        map.add(TypeAdapters.STRING_BUFFER_FACTORY);
        map.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
        map.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
        map.add(TypeAdapters.URL_FACTORY);
        map.add(TypeAdapters.URI_FACTORY);
        map.add(TypeAdapters.UUID_FACTORY);
        map.add(TypeAdapters.CURRENCY_FACTORY);
        map.add(TypeAdapters.LOCALE_FACTORY);
        map.add(TypeAdapters.INET_ADDRESS_FACTORY);
        map.add(TypeAdapters.BIT_SET_FACTORY);
        map.add(DateTypeAdapter.FACTORY);
        map.add(TypeAdapters.CALENDAR_FACTORY);
        map.add(TimeTypeAdapter.FACTORY);
        map.add(SqlDateTypeAdapter.FACTORY);
        map.add(TypeAdapters.TIMESTAMP_FACTORY);
        map.add(ArrayTypeAdapter.FACTORY);
        map.add(TypeAdapters.CLASS_FACTORY);
        map.add(new CollectionTypeAdapterFactory(this.constructorConstructor));
        map.add(new MapTypeAdapterFactory(this.constructorConstructor));
        this.jsonAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(this.constructorConstructor);
        map.add(this.jsonAdapterFactory);
        map.add(TypeAdapters.ENUM_FACTORY);
        map.add(new ReflectiveTypeAdapterFactory(this.constructorConstructor, fieldNamingStrategy, excluder, this.jsonAdapterFactory));
        this.factories = Collections.unmodifiableList(map);
    }

    static void checkValidFloatingPoint(double d) {
        if (!Double.isNaN(d)) {
            if (!Double.isInfinite(d)) {
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(d);
        stringBuilder.append(" is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final <T> TypeAdapter<T> getAdapter(TypeToken<T> typeToken) {
        TypeAdapter<T> typeAdapter = (TypeAdapter) this.typeTokenCache.get(typeToken == null ? NULL_KEY_SURROGATE : typeToken);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        Map map = (Map) this.calls.get();
        Object obj = null;
        if (map == null) {
            map = new HashMap();
            this.calls.set(map);
            obj = 1;
        }
        FutureTypeAdapter futureTypeAdapter = (FutureTypeAdapter) map.get(typeToken);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            TypeAdapter<T> hasNext;
            futureTypeAdapter = new FutureTypeAdapter();
            map.put(typeToken, futureTypeAdapter);
            Iterator it = this.factories.iterator();
            while (true) {
                hasNext = it.hasNext();
                if (hasNext != null) {
                    hasNext = ((TypeAdapterFactory) it.next()).create(this, typeToken);
                    if (hasNext != null) {
                        break;
                    }
                }
                throw new IllegalArgumentException("GSON cannot handle ".concat(String.valueOf(typeToken)));
            }
            futureTypeAdapter.setDelegate(hasNext);
            this.typeTokenCache.put(typeToken, hasNext);
            return hasNext;
        } finally {
            map.remove(typeToken);
            if (obj != null) {
                this.calls.remove();
            }
        }
    }

    public final <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken<T> typeToken) {
        if (!this.factories.contains(typeAdapterFactory)) {
            typeAdapterFactory = this.jsonAdapterFactory;
        }
        Object obj = null;
        for (TypeAdapterFactory typeAdapterFactory2 : this.factories) {
            if (obj != null) {
                TypeAdapter<T> create = typeAdapterFactory2.create(this, typeToken);
                if (create != null) {
                    return create;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                obj = 1;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(typeToken)));
    }

    public final String toJson(Object obj) {
        JsonWriter jsonWriter;
        boolean isLenient;
        boolean serializeNulls;
        boolean isHtmlSafe;
        if (obj == null) {
            obj = JsonNull.INSTANCE;
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter2;
            boolean isLenient2;
            boolean serializeNulls2;
            try {
                jsonWriter2 = new JsonWriter(stringWriter);
                jsonWriter2.setSerializeNulls(false);
                isLenient2 = jsonWriter2.isLenient();
                jsonWriter2.setLenient(true);
                isHtmlSafe = jsonWriter2.isHtmlSafe();
                jsonWriter2.setHtmlSafe(this.htmlSafe);
                serializeNulls2 = jsonWriter2.getSerializeNulls();
                jsonWriter2.setSerializeNulls(false);
                TypeAdapters.JSON_ELEMENT.write(jsonWriter2, obj);
                jsonWriter2.setLenient(isLenient2);
                jsonWriter2.setHtmlSafe(isHtmlSafe);
                jsonWriter2.setSerializeNulls(serializeNulls2);
                return stringWriter.toString();
            } catch (Throwable e) {
                throw new JsonIOException(e);
            } catch (Throwable e2) {
                throw new JsonIOException(e2);
            } catch (Throwable th) {
                jsonWriter2.setLenient(isLenient2);
                jsonWriter2.setHtmlSafe(isHtmlSafe);
                jsonWriter2.setSerializeNulls(serializeNulls2);
            }
        }
        Type type = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            jsonWriter = new JsonWriter(stringWriter2);
            jsonWriter.setSerializeNulls(false);
            TypeAdapter adapter = getAdapter(TypeToken.get(type));
            isLenient = jsonWriter.isLenient();
            jsonWriter.setLenient(true);
            isHtmlSafe = jsonWriter.isHtmlSafe();
            jsonWriter.setHtmlSafe(this.htmlSafe);
            serializeNulls = jsonWriter.getSerializeNulls();
            jsonWriter.setSerializeNulls(false);
            adapter.write(jsonWriter, obj);
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            return stringWriter2.toString();
        } catch (Throwable e22) {
            throw new JsonIOException(e22);
        } catch (Throwable e222) {
            throw new JsonIOException(e222);
        } catch (Throwable th2) {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            } catch (Throwable e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    public final <T> T fromJson(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean isLenient = jsonReader.isLenient();
        boolean z = true;
        jsonReader.setLenient(true);
        try {
            jsonReader.peek();
            z = false;
            type = getAdapter(TypeToken.get(type)).read(jsonReader);
            jsonReader.setLenient(isLenient);
            return type;
        } catch (Throwable e) {
            if (z) {
                jsonReader.setLenient(isLenient);
                return null;
            }
            throw new JsonSyntaxException(e);
        } catch (Throwable e2) {
            throw new JsonSyntaxException(e2);
        } catch (Throwable e22) {
            throw new JsonSyntaxException(e22);
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("{serializeNulls:false,factories:");
        stringBuilder.append(this.factories);
        stringBuilder.append(",instanceCreators:");
        stringBuilder.append(this.constructorConstructor);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final <T> T fromJson(String str, Class<T> cls) throws JsonSyntaxException {
        if (str == null) {
            str = null;
        } else {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            jsonReader.setLenient(false);
            String fromJson = fromJson(jsonReader, (Type) cls);
            assertFullConsumption(fromJson, jsonReader);
            str = fromJson;
        }
        return Primitives.wrap(cls).cast(str);
    }

    public final <T> T fromJson(Reader reader, Class<T> cls) throws JsonSyntaxException, JsonIOException {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(null);
        reader = fromJson(jsonReader, (Type) cls);
        assertFullConsumption(reader, jsonReader);
        return Primitives.wrap(cls).cast(reader);
    }
}
