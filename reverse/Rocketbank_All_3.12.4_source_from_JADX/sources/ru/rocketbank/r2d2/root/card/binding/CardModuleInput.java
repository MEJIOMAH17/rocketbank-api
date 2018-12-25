package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardModuleInput.kt */
public final class CardModuleInput {
    private final String token;

    public static /* bridge */ /* synthetic */ CardModuleInput copy$default(CardModuleInput cardModuleInput, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cardModuleInput.token;
        }
        return cardModuleInput.copy(str);
    }

    public final String component1() {
        return this.token;
    }

    public final CardModuleInput copy(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        return new CardModuleInput(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CardModuleInput) {
                if (Intrinsics.areEqual(this.token, ((CardModuleInput) obj).token)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.token;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CardModuleInput(token=");
        stringBuilder.append(this.token);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CardModuleInput(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.token = str;
    }

    public final String getToken() {
        return this.token;
    }
}
