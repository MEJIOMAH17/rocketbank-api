package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;

/* compiled from: EditCardResponse.kt */
public final class EditCardResponse {
    @SerializedName("account_card")
    private final AccountModel accountCard;

    public static /* bridge */ /* synthetic */ EditCardResponse copy$default(EditCardResponse editCardResponse, AccountModel accountModel, int i, Object obj) {
        if ((i & 1) != 0) {
            accountModel = editCardResponse.accountCard;
        }
        return editCardResponse.copy(accountModel);
    }

    public final AccountModel component1() {
        return this.accountCard;
    }

    public final EditCardResponse copy(AccountModel accountModel) {
        return new EditCardResponse(accountModel);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof EditCardResponse) {
                if (Intrinsics.areEqual(this.accountCard, ((EditCardResponse) obj).accountCard)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        AccountModel accountModel = this.accountCard;
        return accountModel != null ? accountModel.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("EditCardResponse(accountCard=");
        stringBuilder.append(this.accountCard);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public EditCardResponse(AccountModel accountModel) {
        this.accountCard = accountModel;
    }

    public final AccountModel getAccountCard() {
        return this.accountCard;
    }
}
