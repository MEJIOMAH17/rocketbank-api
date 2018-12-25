package ru.rocketbank.core.network.adapter;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.NanoFeedResult.Feed;

/* compiled from: FeedDeserializer.kt */
public final class FeedDeserializer implements JsonDeserializer<Feed> {
    public final Feed deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        Intrinsics.checkParameterIsNotNull(jsonElement, "json");
        Intrinsics.checkParameterIsNotNull(type, "typeOfT");
        Intrinsics.checkParameterIsNotNull(jsonDeserializationContext, "context");
        type = new Feed();
        if (jsonElement instanceof JsonArray) {
            JsonArray jsonArray = (JsonArray) jsonElement;
            int size = jsonArray.size();
            if (size > 0) {
                type.list.ensureCapacity(size);
                Intrinsics.checkExpressionValueIsNotNull(jsonArray, "jsonElements");
                Iterable<JsonElement> iterable = jsonArray;
                Collection arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
                for (JsonElement jsonElement2 : iterable) {
                    Intrinsics.checkExpressionValueIsNotNull(jsonElement2, "it");
                    arrayList.add(deserializeItem(jsonElement2, jsonDeserializationContext));
                }
                for (FeedItem add : (List) arrayList) {
                    type.list.add(add);
                }
            }
            return type;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final ru.rocketbank.core.network.model.FeedItem deserializeItem(com.google.gson.JsonElement r5, com.google.gson.JsonDeserializationContext r6) {
        /*
        r4 = this;
        r0 = r5 instanceof com.google.gson.JsonArray;
        if (r0 == 0) goto L_0x0202;
    L_0x0004:
        r5 = (com.google.gson.JsonArray) r5;
        r0 = 0;
        r1 = r5.get(r0);
        r2 = "pairJson.get(0)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1 = r1.getAsString();
        if (r1 != 0) goto L_0x0018;
    L_0x0016:
        goto L_0x01fb;
    L_0x0018:
        r2 = r1.hashCode();
        r3 = 1;
        switch(r2) {
            case -1352124480: goto L_0x01c7;
            case -1266283874: goto L_0x01a8;
            case -392239151: goto L_0x0188;
            case -294918549: goto L_0x0168;
            case -61803207: goto L_0x0148;
            case 114603: goto L_0x0125;
            case 3452698: goto L_0x0107;
            case 98348096: goto L_0x00fe;
            case 273184065: goto L_0x00df;
            case 504428892: goto L_0x00bf;
            case 823466996: goto L_0x009f;
            case 1510393036: goto L_0x007f;
            case 1574960295: goto L_0x0060;
            case 1662702951: goto L_0x0041;
            case 2074232692: goto L_0x0022;
            default: goto L_0x0020;
        };
    L_0x0020:
        goto L_0x01fb;
    L_0x0022:
        r2 = "month_cash_back";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x002a:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.dto.operations.MonthCashBack.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.dto.operations.MonthCashBack) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 3;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x0041:
        r2 = "operation";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0049:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.dto.operations.Operation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.dto.operations.Operation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 4;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x0060:
        r2 = "chosen_month_cash_back";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0068:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.dto.operations.MonthCashBackChosen.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.dto.operations.MonthCashBackChosen) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 7;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x007f:
        r2 = "rocketruble_operation";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0087:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.dto.operations.Operation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.dto.operations.Operation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 16;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x009f:
        r2 = "delivery";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x00a7:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.DeliveryOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.DeliveryOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 15;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x00bf:
        r2 = "onetwotrip_uid";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x00c7:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.OneTwoTripUidOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.OneTwoTripUidOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 17;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x00df:
        r2 = "discount";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x00e7:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.discounts.Discount.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.discounts.Discount) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 5;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x00fe:
        r2 = "gibdd";
        r2 = r1.equals(r2);
        if (r2 == 0) goto L_0x01fb;
    L_0x0106:
        goto L_0x012d;
    L_0x0107:
        r2 = "push";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x010f:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.PushOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.PushOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r3, r5);
        return r6;
    L_0x0125:
        r2 = "tax";
        r2 = r1.equals(r2);
        if (r2 == 0) goto L_0x01fb;
    L_0x012d:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.TaxGibddPush.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.TaxGibddPush) r5;
        r5.setType(r1);
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 13;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x0148:
        r2 = "salary_tariff";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0150:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.TariffOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.TariffOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 14;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x0168:
        r2 = "transfer_to_safe_account";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0170:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.TransferToSafeAccountOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.TransferToSafeAccountOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 20;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x0188:
        r2 = "new_passport";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x0190:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.NewPassportOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.NewPassportOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 19;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x01a8:
        r2 = "friend";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x01b0:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.FriendOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.FriendOperation) r5;
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 2;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x01c7:
        r2 = "androidpay_push";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01fb;
    L_0x01cf:
        r5 = r5.get(r3);
        r0 = ru.rocketbank.core.model.AndroidPayOperation.class;
        r0 = (java.lang.reflect.Type) r0;
        r5 = r6.deserialize(r5, r0);
        r5 = (ru.rocketbank.core.model.AndroidPayOperation) r5;
        r6 = ru.rocketbank.core.BaseRocketApplication.getContext();
        r0 = ru.rocketbank.core.pay.google.AndroidPayUtils.INSTANCE;
        r0 = "appContext";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);
        r6 = (android.content.Context) r6;
        r6 = ru.rocketbank.core.pay.google.AndroidPayUtils.checkPaySupport(r6);
        r5.setVisible(r6);
        r6 = new ru.rocketbank.core.network.model.FeedItem;
        r0 = 18;
        r5 = (ru.rocketbank.core.model.AbstractOperation) r5;
        r6.<init>(r0, r5);
        return r6;
    L_0x01fb:
        r5 = new ru.rocketbank.core.network.model.FeedItem;
        r6 = 0;
        r5.<init>(r0, r6);
        return r5;
    L_0x0202:
        r6 = new java.lang.IllegalStateException;
        r0 = "Not a JSON Array: ";
        r5 = java.lang.String.valueOf(r5);
        r5 = r0.concat(r5);
        r6.<init>(r5);
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.network.adapter.FeedDeserializer.deserializeItem(com.google.gson.JsonElement, com.google.gson.JsonDeserializationContext):ru.rocketbank.core.network.model.FeedItem");
    }
}
