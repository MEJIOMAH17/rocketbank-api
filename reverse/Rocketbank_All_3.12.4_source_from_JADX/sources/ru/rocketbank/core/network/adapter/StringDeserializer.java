package ru.rocketbank.core.network.adapter;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;

public final class StringDeserializer implements JsonDeserializer<String> {
    public final String deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        jsonElement = jsonElement.getAsString();
        return jsonElement.length() == null ? null : jsonElement;
    }
}
