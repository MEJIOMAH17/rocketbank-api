package ru.rocketbank.core.network.model.leads;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Document.kt */
public final class Document implements Parcelable {
    public static final Creator<Document> CREATOR = new Document$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private final String text;

    /* compiled from: Document.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public Document(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this.text = parcel;
    }

    public final String getText() {
        return this.text;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.text);
    }
}
