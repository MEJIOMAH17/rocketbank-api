package ru.rocketbank.core.model.message;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.Request;

/* compiled from: Attachment.kt */
public class Attachment {
    private int id;
    private String text;
    private String type;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final String getType() {
        return this.type;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final String getLink(boolean z, String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Request.LINK_API);
        stringBuilder.append(str);
        stringBuilder.append("/");
        stringBuilder.append(this.id);
        stringBuilder.append(z ? "/thumb" : "");
        return stringBuilder.toString();
    }
}
