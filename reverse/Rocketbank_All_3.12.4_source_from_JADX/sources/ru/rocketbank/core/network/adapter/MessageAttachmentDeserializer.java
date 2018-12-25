package ru.rocketbank.core.network.adapter;

import com.google.gson.JsonDeserializer;
import ru.rocketbank.core.model.message.Attachment;

/* compiled from: MessageAttachmentDeserializer.kt */
public final class MessageAttachmentDeserializer implements JsonDeserializer<Attachment> {
    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final ru.rocketbank.core.model.message.Attachment deserialize(com.google.gson.JsonElement r2, java.lang.reflect.Type r3, com.google.gson.JsonDeserializationContext r4) {
        /*
        r1 = this;
        if (r4 != 0) goto L_0x0008;
    L_0x0002:
        r2 = new ru.rocketbank.core.model.message.Attachment;
        r2.<init>();
        return r2;
    L_0x0008:
        if (r2 != 0) goto L_0x0010;
    L_0x000a:
        r2 = new ru.rocketbank.core.model.message.Attachment;
        r2.<init>();
        return r2;
    L_0x0010:
        r3 = r2 instanceof com.google.gson.JsonObject;
        if (r3 == 0) goto L_0x00aa;
    L_0x0014:
        r3 = r2;
        r3 = (com.google.gson.JsonObject) r3;
        r0 = "type";
        r3 = r3.get(r0);
        r0 = "json.asJsonObject.get(\"type\")";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r0);
        r3 = r3.getAsString();
        if (r3 != 0) goto L_0x0029;
    L_0x0028:
        goto L_0x0090;
    L_0x0029:
        r0 = r3.hashCode();
        switch(r0) {
            case -1890252483: goto L_0x007d;
            case -938102371: goto L_0x006a;
            case 100313435: goto L_0x0057;
            case 861720859: goto L_0x0044;
            case 1662702951: goto L_0x0031;
            default: goto L_0x0030;
        };
    L_0x0030:
        goto L_0x0090;
    L_0x0031:
        r0 = "operation";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x0090;
    L_0x0039:
        r3 = ru.rocketbank.core.model.message.OperationAttachment.class;
        r3 = (java.lang.reflect.Type) r3;
        r2 = r4.deserialize(r2, r3);
        r2 = (ru.rocketbank.core.model.message.Attachment) r2;
        goto L_0x00a4;
    L_0x0044:
        r0 = "document";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x0090;
    L_0x004c:
        r3 = ru.rocketbank.core.model.message.DocumentAttachment.class;
        r3 = (java.lang.reflect.Type) r3;
        r2 = r4.deserialize(r2, r3);
        r2 = (ru.rocketbank.core.model.message.Attachment) r2;
        goto L_0x00a4;
    L_0x0057:
        r0 = "image";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x0090;
    L_0x005f:
        r3 = ru.rocketbank.core.model.message.ImageAttachment.class;
        r3 = (java.lang.reflect.Type) r3;
        r2 = r4.deserialize(r2, r3);
        r2 = (ru.rocketbank.core.model.message.Attachment) r2;
        goto L_0x00a4;
    L_0x006a:
        r0 = "rating";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x0090;
    L_0x0072:
        r3 = ru.rocketbank.core.model.message.RatingAttachment.class;
        r3 = (java.lang.reflect.Type) r3;
        r2 = r4.deserialize(r2, r3);
        r2 = (ru.rocketbank.core.model.message.Attachment) r2;
        goto L_0x00a4;
    L_0x007d:
        r0 = "sticker";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x0090;
    L_0x0085:
        r3 = ru.rocketbank.core.model.message.StickerAttachment.class;
        r3 = (java.lang.reflect.Type) r3;
        r2 = r4.deserialize(r2, r3);
        r2 = (ru.rocketbank.core.model.message.Attachment) r2;
        goto L_0x00a4;
    L_0x0090:
        r2 = "MsgAttachment";
        r4 = "Unknown type ";
        r3 = java.lang.String.valueOf(r3);
        r3 = r4.concat(r3);
        android.util.Log.e(r2, r3);
        r2 = new ru.rocketbank.core.model.message.Attachment;
        r2.<init>();
    L_0x00a4:
        r3 = "attachment";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);
        return r2;
    L_0x00aa:
        r3 = new java.lang.IllegalStateException;
        r4 = "Not a JSON Object: ";
        r2 = java.lang.String.valueOf(r2);
        r2 = r4.concat(r2);
        r3.<init>(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.network.adapter.MessageAttachmentDeserializer.deserialize(com.google.gson.JsonElement, java.lang.reflect.Type, com.google.gson.JsonDeserializationContext):ru.rocketbank.core.model.message.Attachment");
    }
}
