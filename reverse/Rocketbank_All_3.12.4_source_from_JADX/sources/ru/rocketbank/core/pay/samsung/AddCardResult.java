package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;
import com.samsung.android.sdk.samsungpay.v2.card.Card;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RxSPay.kt */
public final class AddCardResult {
    private final Bundle bundle;
    private final Card card;
    private final int progress;
    private final boolean ready;
    private final int status;
    private final int total;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddCardResult) {
            AddCardResult addCardResult = (AddCardResult) obj;
            if (Intrinsics.areEqual(null, null)) {
                return (this.status == addCardResult.status) && Intrinsics.areEqual(this.card, addCardResult.card);
            }
        }
    }

    public final int hashCode() {
        int i = (923521 + this.status) * 31;
        Card card = this.card;
        return i + (card != null ? card.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AddCardResult(ready=true, progress=0, total=0, bundle=");
        stringBuilder.append(null);
        stringBuilder.append(", status=");
        stringBuilder.append(this.status);
        stringBuilder.append(", card=");
        stringBuilder.append(this.card);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private AddCardResult(int i, Card card) {
        this.ready = true;
        this.progress = 0;
        this.total = 0;
        this.bundle = null;
        this.status = i;
        this.card = card;
    }
}
