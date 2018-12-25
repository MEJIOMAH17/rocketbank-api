package com.google.gson.internal.bind;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;

public final class TreeTypeAdapter<T> extends TypeAdapter<T> {
    private final GsonContextImpl context = new GsonContextImpl();
    private TypeAdapter<T> delegate;
    private final JsonDeserializer<T> deserializer;
    final Gson gson;
    private final JsonSerializer<T> serializer;
    private final TypeAdapterFactory skipPast;
    private final TypeToken<T> typeToken;

    static final class SingleTypeFactory implements TypeAdapterFactory {
        private final JsonDeserializer<?> deserializer;
        private final TypeToken<?> exactType;
        private final Class<?> hierarchyType;
        private final boolean matchRawType;
        private final JsonSerializer<?> serializer;

        SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z) {
            this.serializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.deserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            if (this.serializer == null) {
                if (this.deserializer == null) {
                    obj = null;
                    if (obj != null) {
                        throw new IllegalArgumentException();
                    }
                    this.exactType = typeToken;
                    this.matchRawType = z;
                    this.hierarchyType = null;
                    return;
                }
            }
            obj = true;
            if (obj != null) {
                this.exactType = typeToken;
                this.matchRawType = z;
                this.hierarchyType = null;
                return;
            }
            throw new IllegalArgumentException();
        }

        public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            boolean z;
            Object obj = null;
            if (this.exactType != null) {
                if (!this.exactType.equals(typeToken)) {
                    if (!this.matchRawType || this.exactType.getType() != typeToken.getRawType()) {
                        z = false;
                    }
                }
                z = true;
            } else {
                z = obj.isAssignableFrom(typeToken.getRawType());
            }
            return z ? new TreeTypeAdapter(this.serializer, this.deserializer, gson, typeToken, this) : obj;
        }
    }

    final class GsonContextImpl implements OnLoadCompleteListener, JsonDeserializationContext {
        private GsonContextImpl() {
        }

        public final <R> R deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
            return jsonElement == null ? null : TreeTypeAdapter.this.gson.fromJson(new JsonTreeReader(jsonElement), type);
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.serializer = jsonSerializer;
        this.deserializer = jsonDeserializer;
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPast = typeAdapterFactory;
    }

    public final T read(JsonReader jsonReader) throws IOException {
        if (this.deserializer == null) {
            TypeAdapter typeAdapter = this.delegate;
            if (typeAdapter == null) {
                typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
                this.delegate = typeAdapter;
            }
            return typeAdapter.read(jsonReader);
        }
        jsonReader = Streams.parse(jsonReader);
        return jsonReader instanceof JsonNull ? null : this.deserializer.deserialize(jsonReader, this.typeToken.getType(), this.context);
    }

    public final void write(JsonWriter jsonWriter, T t) throws IOException {
        if (this.serializer == null) {
            TypeAdapter typeAdapter = this.delegate;
            if (typeAdapter == null) {
                typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
                this.delegate = typeAdapter;
            }
            typeAdapter.write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            TypeAdapters.JSON_ELEMENT.write(jsonWriter, this.serializer.serialize$117eb95b());
        }
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, typeToken.getType() == typeToken.getRawType());
    }
}
