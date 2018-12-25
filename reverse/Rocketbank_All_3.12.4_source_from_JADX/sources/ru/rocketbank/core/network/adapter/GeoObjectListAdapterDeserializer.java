package ru.rocketbank.core.network.adapter;

import com.google.android.gms.maps.model.LatLng;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;

/* compiled from: GeoObjectListAdapterDeserializer.kt */
public final class GeoObjectListAdapterDeserializer implements JsonDeserializer<ArrayList<GeoObject>> {
    public final ArrayList<GeoObject> deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        Intrinsics.checkParameterIsNotNull(jsonElement, "json");
        if ((jsonElement instanceof JsonObject) != null) {
            jsonElement = ((JsonObject) jsonElement).get("response");
            Intrinsics.checkExpressionValueIsNotNull(jsonElement, "json.asJsonObject[\"response\"]");
            if ((jsonElement instanceof JsonObject) != null) {
                jsonElement = ((JsonObject) jsonElement).get("GeoObjectCollection");
                Intrinsics.checkExpressionValueIsNotNull(jsonElement, "json.asJsonObject[\"respo…ct[\"GeoObjectCollection\"]");
                if ((jsonElement instanceof JsonObject) != null) {
                    JsonObject jsonObject = (JsonObject) jsonElement;
                    type = jsonObject.get("metaDataProperty");
                    Intrinsics.checkExpressionValueIsNotNull(type, "geoCollection[\"metaDataProperty\"]");
                    if ((type instanceof JsonObject) != null) {
                        type = ((JsonObject) type).get("GeocoderResponseMetaData");
                        Intrinsics.checkExpressionValueIsNotNull(type, "geoCollection[\"metaDataP…eocoderResponseMetaData\"]");
                        if ((type instanceof JsonObject) != null) {
                            type = ((JsonObject) type).get("found");
                            Intrinsics.checkExpressionValueIsNotNull(type, "geoCollection[\"metaDataP…   .asJsonObject[\"found\"]");
                            type = type.getAsInt();
                            jsonElement = jsonObject.get("featureMember");
                            Intrinsics.checkExpressionValueIsNotNull(jsonElement, "geoCollection[\"featureMember\"]");
                            if ((jsonElement instanceof JsonArray) != null) {
                                JsonArray jsonArray = (JsonArray) jsonElement;
                                jsonDeserializationContext = new ArrayList(type);
                                jsonElement = jsonArray.iterator();
                                while (jsonElement.hasNext() != null) {
                                    JsonElement jsonElement2 = (JsonElement) jsonElement.next();
                                    Intrinsics.checkExpressionValueIsNotNull(jsonElement2, "member");
                                    if (jsonElement2 instanceof JsonObject) {
                                        type = ((JsonObject) jsonElement2).get("GeoObject");
                                        Intrinsics.checkExpressionValueIsNotNull(type, "member.asJsonObject[\"GeoObject\"]");
                                        if (type instanceof JsonObject) {
                                            JsonObject jsonObject2 = (JsonObject) type;
                                            Intrinsics.checkExpressionValueIsNotNull(jsonObject2, "member.asJsonObject[\"GeoObject\"].asJsonObject");
                                            if (jsonObject2 instanceof JsonObject) {
                                                JsonElement jsonElement3 = jsonObject2.get("metaDataProperty");
                                                Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "mapsGeoObject\n          …bject[\"metaDataProperty\"]");
                                                if (jsonElement3 instanceof JsonObject) {
                                                    jsonElement3 = ((JsonObject) jsonElement3).get("GeocoderMetaData");
                                                    Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "mapsGeoObject\n          …bject[\"GeocoderMetaData\"]");
                                                    if (jsonElement3 instanceof JsonObject) {
                                                        jsonElement3 = ((JsonObject) jsonElement3).get("AddressDetails");
                                                        Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "mapsGeoObject\n          …nObject[\"AddressDetails\"]");
                                                        if (jsonElement3 instanceof JsonObject) {
                                                            jsonElement3 = ((JsonObject) jsonElement3).get("Country");
                                                            Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "mapsGeoObject\n          … .asJsonObject[\"Country\"]");
                                                            if (jsonElement3 instanceof JsonObject) {
                                                                jsonElement3 = ((JsonObject) jsonElement3).get("AddressLine");
                                                                Intrinsics.checkExpressionValueIsNotNull(jsonElement3, "mapsGeoObject\n          …JsonObject[\"AddressLine\"]");
                                                                String asString = jsonElement3.getAsString();
                                                                Intrinsics.checkExpressionValueIsNotNull(asString, "mapsGeoObject\n          …                .asString");
                                                                type = jsonObject2.get("Point");
                                                                Intrinsics.checkExpressionValueIsNotNull(type, "mapsGeoObject[\"Point\"]");
                                                                if (type instanceof JsonObject) {
                                                                    type = ((JsonObject) type).get("pos");
                                                                    Intrinsics.checkExpressionValueIsNotNull(type, "mapsGeoObject[\"Point\"].asJsonObject[\"pos\"]");
                                                                    type = type.getAsString();
                                                                    Intrinsics.checkExpressionValueIsNotNull(type, "mapsGeoObject[\"Point\"].a…sonObject[\"pos\"].asString");
                                                                    List split$default = StringsKt__StringsKt.split$default((CharSequence) type, new String[]{" "}, false, 0, 6, null);
                                                                    jsonDeserializationContext.add(new GeoObject(asString, new LatLng(Double.parseDouble((String) split$default.get(1)), Double.parseDouble((String) split$default.get(0)))));
                                                                } else {
                                                                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(type)));
                                                                }
                                                            }
                                                            throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement3)));
                                                        }
                                                        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement3)));
                                                    }
                                                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement3)));
                                                }
                                                throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement3)));
                                            }
                                            throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonObject2)));
                                        }
                                        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(type)));
                                    }
                                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement2)));
                                }
                                return jsonDeserializationContext;
                            }
                            throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
                        }
                        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(type)));
                    }
                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(type)));
                }
                throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement)));
            }
            throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement)));
        }
        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(jsonElement)));
    }
}
