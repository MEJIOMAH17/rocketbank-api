package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;

    static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        abstract void read(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        abstract void write(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        abstract boolean writeField(Object obj) throws IOException, IllegalAccessException;

        protected BoundField(String str, boolean z, boolean z2) {
            this.name = str;
            this.serialized = z;
            this.deserialized = z2;
        }
    }

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        public final T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T construct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = (BoundField) this.boundFields.get(jsonReader.nextName());
                    if (boundField != null) {
                        if (boundField.deserialized) {
                            boundField.read(jsonReader, construct);
                        }
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return construct;
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            } catch (JsonReader jsonReader2) {
                throw new AssertionError(jsonReader2);
            }
        }

        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.writeField(t)) {
                        jsonWriter.name(boundField.name);
                        boundField.write(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (JsonWriter jsonWriter2) {
                throw new AssertionError(jsonWriter2);
            }
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
    }

    private boolean excludeField(Field field, boolean z) {
        Excluder excluder = this.excluder;
        return (excluder.excludeClass(field.getType(), z) || excluder.excludeField(field, z) != null) ? null : true;
    }

    private List<String> getFieldNames(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(field));
        }
        field = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(field);
        }
        List<String> arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(field);
        for (Object add : alternate) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType));
        }
        return null;
    }

    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory = this;
        Gson gson2 = gson;
        Map<String, BoundField> linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        TypeToken typeToken2 = typeToken;
        Class cls2 = cls;
        while (cls2 != Object.class) {
            Type type2;
            Field[] declaredFields = cls2.getDeclaredFields();
            boolean z = false;
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                int i2;
                int i3;
                boolean z2;
                Field[] fieldArr;
                TypeToken typeToken3;
                Class cls3;
                Type type3;
                Field field = declaredFields[i];
                boolean excludeField = reflectiveTypeAdapterFactory.excludeField(field, true);
                boolean excludeField2 = reflectiveTypeAdapterFactory.excludeField(field, z);
                if (!excludeField) {
                    if (!excludeField2) {
                        i2 = i;
                        i3 = length;
                        z2 = z;
                        fieldArr = declaredFields;
                        typeToken3 = typeToken2;
                        type2 = type;
                        cls3 = cls2;
                        i = i2 + 1;
                        type = type2;
                        typeToken2 = typeToken3;
                        cls2 = cls3;
                        declaredFields = fieldArr;
                        z = z2;
                        length = i3;
                        reflectiveTypeAdapterFactory = this;
                        gson2 = gson;
                    }
                }
                field.setAccessible(true);
                Type resolve = C$Gson$Types.resolve(typeToken2.getType(), cls2, field.getGenericType());
                List fieldNames = reflectiveTypeAdapterFactory.getFieldNames(field);
                int size = fieldNames.size();
                boolean z3 = excludeField;
                int i4 = z;
                cls3 = cls2;
                BoundField boundField = null;
                while (i4 < size) {
                    type3 = type;
                    String str = (String) fieldNames.get(i4);
                    if (i4 != 0) {
                        z3 = z;
                    }
                    fieldArr = declaredFields;
                    final TypeToken typeToken4 = TypeToken.get(resolve);
                    boolean isPrimitive = Primitives.isPrimitive(typeToken4.getRawType());
                    JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
                    TypeAdapter typeAdapter = jsonAdapter != null ? JsonAdapterAnnotationTypeAdapterFactory.getTypeAdapter(reflectiveTypeAdapterFactory.constructorConstructor, gson2, typeToken4, jsonAdapter) : null;
                    z = typeAdapter != null;
                    if (typeAdapter == null) {
                        typeAdapter = gson2.getAdapter(typeToken4);
                    }
                    int i5 = i4;
                    int i6 = size;
                    List list = fieldNames;
                    Type type4 = resolve;
                    C12451 c12451 = r0;
                    Field field2 = field;
                    i2 = i;
                    final boolean z4 = z;
                    i3 = length;
                    final TypeAdapter typeAdapter2 = typeAdapter;
                    final Gson gson3 = gson2;
                    typeToken3 = typeToken2;
                    final boolean z5 = isPrimitive;
                    C12451 c124512 = new BoundField(str, z3, excludeField2) {
                        final void write(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                            TypeAdapter typeAdapter;
                            obj = field.get(obj);
                            if (z4) {
                                typeAdapter = typeAdapter2;
                            } else {
                                typeAdapter = new TypeAdapterRuntimeTypeWrapper(gson3, typeAdapter2, typeToken4.getType());
                            }
                            typeAdapter.write(jsonWriter, obj);
                        }

                        final void read(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                            jsonReader = typeAdapter2.read(jsonReader);
                            if (jsonReader != null || !z5) {
                                field.set(obj, jsonReader);
                            }
                        }

                        public final boolean writeField(Object obj) throws IOException, IllegalAccessException {
                            if (this.serialized && field.get(obj) != obj) {
                                return true;
                            }
                            return false;
                        }
                    };
                    BoundField boundField2 = (BoundField) linkedHashMap.put(str, c12451);
                    if (boundField == null) {
                        boundField = boundField2;
                    }
                    i4 = i5 + 1;
                    typeToken2 = typeToken3;
                    type = type3;
                    declaredFields = fieldArr;
                    int i7 = 1;
                    z = false;
                    size = i6;
                    fieldNames = list;
                    resolve = type4;
                    field = field2;
                    i = i2;
                    length = i3;
                    reflectiveTypeAdapterFactory = this;
                    gson2 = gson;
                }
                i2 = i;
                i3 = length;
                z2 = z;
                fieldArr = declaredFields;
                typeToken3 = typeToken2;
                type3 = type;
                if (boundField != null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(type3);
                    stringBuilder.append(" declares multiple JSON fields named ");
                    stringBuilder.append(boundField.name);
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
                type2 = type3;
                i = i2 + 1;
                type = type2;
                typeToken2 = typeToken3;
                cls2 = cls3;
                declaredFields = fieldArr;
                z = z2;
                length = i3;
                reflectiveTypeAdapterFactory = this;
                gson2 = gson;
            }
            type2 = type;
            Class cls4 = cls2;
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), cls4, cls4.getGenericSuperclass()));
            cls2 = typeToken2.getRawType();
            reflectiveTypeAdapterFactory = this;
            gson2 = gson;
        }
        return linkedHashMap;
    }
}
