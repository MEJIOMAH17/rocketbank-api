package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;

/* compiled from: DelimiterOperation.kt */
public final class DelimiterOperation extends AbstractOperation implements Parcelable {
    public static final Creator<DelimiterOperation> CREATOR = new DelimiterOperation$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private int type;

    /* compiled from: DelimiterOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public DelimiterOperation(int i, int i2) {
        this.type = i;
        setId(i2);
    }

    protected DelimiterOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        super(parcel);
        this.type = parcel.readInt();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeInt(this.type);
        }
    }
}
