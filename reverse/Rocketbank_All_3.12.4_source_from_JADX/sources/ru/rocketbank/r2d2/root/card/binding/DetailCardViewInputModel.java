package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ChangePin;

/* compiled from: DetailCardViewInputModel.kt */
public final class DetailCardViewInputModel {
    private final AndroidPayParameters androidPayParameters;
    private final String balance;
    private final String cardNumber;
    private final CardParameters cardParameters;
    private final ChangePin changePin;
    private final String imageUrl;
    private final SPayParameters sPayParameters;
    private final String titleBalance;
    private final String titleName;

    public static /* bridge */ /* synthetic */ DetailCardViewInputModel copy$default(DetailCardViewInputModel detailCardViewInputModel, String str, String str2, String str3, String str4, String str5, ChangePin changePin, CardParameters cardParameters, AndroidPayParameters androidPayParameters, SPayParameters sPayParameters, int i, Object obj) {
        DetailCardViewInputModel detailCardViewInputModel2 = detailCardViewInputModel;
        int i2 = i;
        return detailCardViewInputModel2.copy((i2 & 1) != 0 ? detailCardViewInputModel2.imageUrl : str, (i2 & 2) != 0 ? detailCardViewInputModel2.titleBalance : str2, (i2 & 4) != 0 ? detailCardViewInputModel2.titleName : str3, (i2 & 8) != 0 ? detailCardViewInputModel2.balance : str4, (i2 & 16) != 0 ? detailCardViewInputModel2.cardNumber : str5, (i2 & 32) != 0 ? detailCardViewInputModel2.changePin : changePin, (i2 & 64) != 0 ? detailCardViewInputModel2.cardParameters : cardParameters, (i2 & 128) != 0 ? detailCardViewInputModel2.androidPayParameters : androidPayParameters, (i2 & 256) != 0 ? detailCardViewInputModel2.sPayParameters : sPayParameters);
    }

    public final String component1() {
        return this.imageUrl;
    }

    public final String component2() {
        return this.titleBalance;
    }

    public final String component3() {
        return this.titleName;
    }

    public final String component4() {
        return this.balance;
    }

    public final String component5() {
        return this.cardNumber;
    }

    public final ChangePin component6() {
        return this.changePin;
    }

    public final CardParameters component7() {
        return this.cardParameters;
    }

    public final AndroidPayParameters component8() {
        return this.androidPayParameters;
    }

    public final SPayParameters component9() {
        return this.sPayParameters;
    }

    public final DetailCardViewInputModel copy(String str, String str2, String str3, String str4, String str5, ChangePin changePin, CardParameters cardParameters, AndroidPayParameters androidPayParameters, SPayParameters sPayParameters) {
        String str6 = str;
        Intrinsics.checkParameterIsNotNull(str6, "imageUrl");
        String str7 = str2;
        Intrinsics.checkParameterIsNotNull(str7, "titleBalance");
        String str8 = str3;
        Intrinsics.checkParameterIsNotNull(str8, "titleName");
        String str9 = str4;
        Intrinsics.checkParameterIsNotNull(str9, "balance");
        String str10 = str5;
        Intrinsics.checkParameterIsNotNull(str10, "cardNumber");
        CardParameters cardParameters2 = cardParameters;
        Intrinsics.checkParameterIsNotNull(cardParameters2, "cardParameters");
        AndroidPayParameters androidPayParameters2 = androidPayParameters;
        Intrinsics.checkParameterIsNotNull(androidPayParameters2, "androidPayParameters");
        SPayParameters sPayParameters2 = sPayParameters;
        Intrinsics.checkParameterIsNotNull(sPayParameters2, "sPayParameters");
        return new DetailCardViewInputModel(str6, str7, str8, str9, str10, changePin, cardParameters2, androidPayParameters2, sPayParameters2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DetailCardViewInputModel) {
                DetailCardViewInputModel detailCardViewInputModel = (DetailCardViewInputModel) obj;
                if (Intrinsics.areEqual(this.imageUrl, detailCardViewInputModel.imageUrl) && Intrinsics.areEqual(this.titleBalance, detailCardViewInputModel.titleBalance) && Intrinsics.areEqual(this.titleName, detailCardViewInputModel.titleName) && Intrinsics.areEqual(this.balance, detailCardViewInputModel.balance) && Intrinsics.areEqual(this.cardNumber, detailCardViewInputModel.cardNumber) && Intrinsics.areEqual(this.changePin, detailCardViewInputModel.changePin) && Intrinsics.areEqual(this.cardParameters, detailCardViewInputModel.cardParameters) && Intrinsics.areEqual(this.androidPayParameters, detailCardViewInputModel.androidPayParameters) && Intrinsics.areEqual(this.sPayParameters, detailCardViewInputModel.sPayParameters)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.imageUrl;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.titleBalance;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.titleName;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.balance;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.cardNumber;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        ChangePin changePin = this.changePin;
        hashCode = (hashCode + (changePin != null ? changePin.hashCode() : 0)) * 31;
        CardParameters cardParameters = this.cardParameters;
        hashCode = (hashCode + (cardParameters != null ? cardParameters.hashCode() : 0)) * 31;
        AndroidPayParameters androidPayParameters = this.androidPayParameters;
        hashCode = (hashCode + (androidPayParameters != null ? androidPayParameters.hashCode() : 0)) * 31;
        SPayParameters sPayParameters = this.sPayParameters;
        if (sPayParameters != null) {
            i = sPayParameters.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DetailCardViewInputModel(imageUrl=");
        stringBuilder.append(this.imageUrl);
        stringBuilder.append(", titleBalance=");
        stringBuilder.append(this.titleBalance);
        stringBuilder.append(", titleName=");
        stringBuilder.append(this.titleName);
        stringBuilder.append(", balance=");
        stringBuilder.append(this.balance);
        stringBuilder.append(", cardNumber=");
        stringBuilder.append(this.cardNumber);
        stringBuilder.append(", changePin=");
        stringBuilder.append(this.changePin);
        stringBuilder.append(", cardParameters=");
        stringBuilder.append(this.cardParameters);
        stringBuilder.append(", androidPayParameters=");
        stringBuilder.append(this.androidPayParameters);
        stringBuilder.append(", sPayParameters=");
        stringBuilder.append(this.sPayParameters);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DetailCardViewInputModel(String str, String str2, String str3, String str4, String str5, ChangePin changePin, CardParameters cardParameters, AndroidPayParameters androidPayParameters, SPayParameters sPayParameters) {
        Intrinsics.checkParameterIsNotNull(str, "imageUrl");
        Intrinsics.checkParameterIsNotNull(str2, "titleBalance");
        Intrinsics.checkParameterIsNotNull(str3, "titleName");
        Intrinsics.checkParameterIsNotNull(str4, "balance");
        Intrinsics.checkParameterIsNotNull(str5, "cardNumber");
        Intrinsics.checkParameterIsNotNull(cardParameters, "cardParameters");
        Intrinsics.checkParameterIsNotNull(androidPayParameters, "androidPayParameters");
        Intrinsics.checkParameterIsNotNull(sPayParameters, "sPayParameters");
        this.imageUrl = str;
        this.titleBalance = str2;
        this.titleName = str3;
        this.balance = str4;
        this.cardNumber = str5;
        this.changePin = changePin;
        this.cardParameters = cardParameters;
        this.androidPayParameters = androidPayParameters;
        this.sPayParameters = sPayParameters;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getTitleBalance() {
        return this.titleBalance;
    }

    public final String getTitleName() {
        return this.titleName;
    }

    public final String getBalance() {
        return this.balance;
    }

    public final String getCardNumber() {
        return this.cardNumber;
    }

    public final ChangePin getChangePin() {
        return this.changePin;
    }

    public final CardParameters getCardParameters() {
        return this.cardParameters;
    }

    public final AndroidPayParameters getAndroidPayParameters() {
        return this.androidPayParameters;
    }

    public final SPayParameters getSPayParameters() {
        return this.sPayParameters;
    }
}
