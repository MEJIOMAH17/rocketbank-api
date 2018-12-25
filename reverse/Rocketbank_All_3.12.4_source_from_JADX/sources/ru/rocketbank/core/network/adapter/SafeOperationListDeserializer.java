package ru.rocketbank.core.network.adapter;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FriendOperation;
import ru.rocketbank.core.model.OperationsResponse.SafeOperationList;
import ru.rocketbank.core.model.PushOperation;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;
import ru.rocketbank.core.model.dto.operations.MonthCashBackChosen;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;

/* compiled from: SafeOperationListDeserializer.kt */
public final class SafeOperationListDeserializer implements JsonDeserializer<SafeOperationList> {
    public final SafeOperationList deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        Intrinsics.checkParameterIsNotNull(jsonElement, "json");
        Intrinsics.checkParameterIsNotNull(type, "typeOfT");
        Intrinsics.checkParameterIsNotNull(jsonDeserializationContext, "context");
        type = new SafeOperationList();
        if (jsonElement instanceof JsonArray) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            int i = 0;
            int size = jsonArray.size() - 1;
            if (size >= 0) {
                while (true) {
                    JsonElement jsonElement2 = jsonArray.get(i);
                    Intrinsics.checkExpressionValueIsNotNull(jsonElement2, "jsonElements.get(i)");
                    type.add(deserializeItem(jsonElement2, jsonDeserializationContext));
                    if (i == size) {
                        break;
                    }
                    i++;
                }
            }
            return type;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }

    private final FeedItem deserializeItem(JsonElement jsonElement, JsonDeserializationContext jsonDeserializationContext) {
        if (jsonElement instanceof JsonArray) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            JsonElement jsonElement2 = jsonArray.get(0);
            Intrinsics.checkExpressionValueIsNotNull(jsonElement2, "pairJson.get(0)");
            String asString = jsonElement2.getAsString();
            if (Intrinsics.areEqual("push", asString)) {
                return new FeedItem(1, (PushOperation) jsonDeserializationContext.deserialize(jsonArray.get(1), PushOperation.class));
            }
            if (Intrinsics.areEqual("operation", asString)) {
                return new FeedItem(4, (Operation) jsonDeserializationContext.deserialize(jsonArray.get(1), Operation.class));
            }
            if (Intrinsics.areEqual("month_cash_back", asString)) {
                return new FeedItem(3, (MonthCashBack) jsonDeserializationContext.deserialize(jsonArray.get(1), MonthCashBack.class));
            }
            if (Intrinsics.areEqual("chosen_month_cash_back", asString)) {
                return new FeedItem(7, (MonthCashBackChosen) jsonDeserializationContext.deserialize(jsonArray.get(1), MonthCashBackChosen.class));
            }
            if (Intrinsics.areEqual("discount", asString)) {
                return new FeedItem(5, (Discount) jsonDeserializationContext.deserialize(jsonArray.get(1), Discount.class));
            }
            if (Intrinsics.areEqual("friend", asString)) {
                return new FeedItem(2, (FriendOperation) jsonDeserializationContext.deserialize(jsonArray.get(1), FriendOperation.class));
            }
            return new FeedItem(0, null);
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }
}
