package ru.rocketbank.core.network.adapter;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import ru.rocketbank.core.model.Limit;

public class LimitDeserializer implements JsonDeserializer<ArrayList<Limit>> {
    public ArrayList<Limit> deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if ((jsonElement instanceof JsonArray) != null) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            type = new ArrayList();
            for (jsonDeserializationContext = null; jsonDeserializationContext < jsonArray.size(); jsonDeserializationContext++) {
                type.add(deserializeLimit(jsonArray.get(jsonDeserializationContext)));
            }
            return type;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }

    public Limit deserializeLimit(JsonElement jsonElement) {
        if (jsonElement instanceof JsonArray) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jsonArray.size(); i++) {
                arrayList.add(jsonArray.get(i).getAsString());
            }
            return new Limit(arrayList);
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }
}
