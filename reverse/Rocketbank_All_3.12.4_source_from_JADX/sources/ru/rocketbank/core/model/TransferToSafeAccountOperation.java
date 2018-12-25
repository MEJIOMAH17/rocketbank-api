package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransferToSafeAccountOperation.kt */
public final class TransferToSafeAccountOperation extends AbstractOperation {
    @SerializedName("button_text")
    private String buttonText = "";
    @SerializedName("document_button_text")
    private String documentButtonText = "";
    @SerializedName("document_url")
    private String documentUrl = "";
    private String text = "";

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.text = str;
    }

    public final String getDocumentUrl() {
        return this.documentUrl;
    }

    public final void setDocumentUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.documentUrl = str;
    }

    public final String getDocumentButtonText() {
        return this.documentButtonText;
    }

    public final void setDocumentButtonText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.documentButtonText = str;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final void setButtonText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.buttonText = str;
    }
}
