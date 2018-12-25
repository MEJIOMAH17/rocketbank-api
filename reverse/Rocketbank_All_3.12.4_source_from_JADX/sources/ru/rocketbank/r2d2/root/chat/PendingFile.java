package ru.rocketbank.r2d2.root.chat;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PendingFile.kt */
public final class PendingFile implements Parcelable {
    public static final Creator<PendingFile> CREATOR = new PendingFile$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final String description;
    private final String url;

    /* compiled from: PendingFile.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public PendingFile(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        this.url = str;
        this.description = str2;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.url);
        }
        if (parcel != null) {
            parcel.writeString(this.description);
        }
    }

    protected PendingFile(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "inObj");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "inObj.readString()");
        this(readString, parcel.readString());
    }
}
