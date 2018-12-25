package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TemplateEditBody.kt */
public final class TemplateEditBody {
    @SerializedName("payment_template")
    private Content paymentTemplate = new Content();

    /* compiled from: TemplateEditBody.kt */
    public static final class Content {
        private String title;

        public final String getTitle() {
            return this.title;
        }

        public final void setTitle(String str) {
            this.title = str;
        }
    }

    public final Content getPaymentTemplate() {
        return this.paymentTemplate;
    }

    public final void setPaymentTemplate(Content content) {
        Intrinsics.checkParameterIsNotNull(content, "<set-?>");
        this.paymentTemplate = content;
    }
}
