package ru.rocketbank.core.network.adapter;

import com.google.android.gms.maps.model.LatLng;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LatLngListDeserializer.kt */
public final class LatLngListDeserializer implements JsonDeserializer<LatLngList> {
    public final LatLngList deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        Intrinsics.checkParameterIsNotNull(jsonElement, "json");
        if ((jsonElement instanceof JsonArray) != null) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            Intrinsics.checkExpressionValueIsNotNull(jsonArray, "jsonArray");
            Iterable<JsonElement> iterable = jsonArray;
            Collection collection = (Collection) new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
            for (JsonElement jsonElement2 : iterable) {
                Intrinsics.checkExpressionValueIsNotNull(jsonElement2, "it");
                if (jsonElement2 instanceof JsonObject) {
                    JsonObject jsonObject = (JsonObject) jsonElement2;
                    JsonElement jsonElement3 = jsonObject.get("lat");
                    Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "obj.get(\"lat\")");
                    double asDouble = jsonElement3.getAsDouble();
                    jsonDeserializationContext = jsonObject.get("lng");
                    Intrinsics.checkExpressionValueIsNotNull(jsonDeserializationContext, "obj.get(\"lng\")");
                    collection.add(new LatLng(asDouble, jsonDeserializationContext.getAsDouble()));
                } else {
                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement2)));
                }
            }
            List list = (List) collection;
            jsonElement = new LatLngList(list.size());
            jsonElement.addAll(list);
            return jsonElement;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }
}
