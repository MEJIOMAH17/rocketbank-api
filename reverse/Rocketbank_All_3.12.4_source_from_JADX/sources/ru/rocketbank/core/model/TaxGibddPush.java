package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Merchant;

/* compiled from: TaxGibddPush.kt */
public final class TaxGibddPush extends AbstractOperation implements Parcelable {
    public static final Creator<TaxGibddPush> CREATOR = new TaxGibddPush$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private Merchant merchant;
    private String title;
    private String type;

    /* compiled from: TaxGibddPush.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final String getType() {
        return this.type;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final Merchant getMerchant() {
        return this.merchant;
    }

    public final void setMerchant(Merchant merchant) {
        this.merchant = merchant;
    }

    public TaxGibddPush(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        super(parcel);
        this.title = parcel.readString();
        this.type = parcel.readString();
        this.merchant = (Merchant) parcel.readParcelable(Merchant.class.getClassLoader());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.title);
        }
        if (parcel != null) {
            parcel.writeString(this.type);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.merchant, i);
        }
    }
}
