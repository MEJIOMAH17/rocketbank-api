package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.dto.CheckCardData;

/* compiled from: ChangeCodeWord.kt */
public final class ChangeCodeWord implements Parcelable {
    public static final Creator<ChangeCodeWord> CREATOR = new ChangeCodeWord$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("check_card")
    private final CheckCardData checkCard;
    private final String text;

    /* compiled from: ChangeCodeWord.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public ChangeCodeWord() {
        this(null, null, 3, null);
    }

    public static /* bridge */ /* synthetic */ ChangeCodeWord copy$default(ChangeCodeWord changeCodeWord, String str, CheckCardData checkCardData, int i, Object obj) {
        if ((i & 1) != 0) {
            str = changeCodeWord.text;
        }
        if ((i & 2) != 0) {
            checkCardData = changeCodeWord.checkCard;
        }
        return changeCodeWord.copy(str, checkCardData);
    }

    public final String component1() {
        return this.text;
    }

    public final CheckCardData component2() {
        return this.checkCard;
    }

    public final ChangeCodeWord copy(String str, CheckCardData checkCardData) {
        return new ChangeCodeWord(str, checkCardData);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ChangeCodeWord) {
                ChangeCodeWord changeCodeWord = (ChangeCodeWord) obj;
                if (Intrinsics.areEqual(this.text, changeCodeWord.text) && Intrinsics.areEqual(this.checkCard, changeCodeWord.checkCard)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.text;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        CheckCardData checkCardData = this.checkCard;
        if (checkCardData != null) {
            i = checkCardData.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ChangeCodeWord(text=");
        stringBuilder.append(this.text);
        stringBuilder.append(", checkCard=");
        stringBuilder.append(this.checkCard);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ChangeCodeWord(String str, CheckCardData checkCardData) {
        this.text = str;
        this.checkCard = checkCardData;
    }

    public final String getText() {
        return this.text;
    }

    public /* synthetic */ ChangeCodeWord(String str, CheckCardData checkCardData, int i, Ref ref) {
        if ((i & 1) != null) {
            str = null;
        }
        if ((i & 2) != 0) {
            checkCardData = null;
        }
        this(str, checkCardData);
    }

    public final CheckCardData getCheckCard() {
        return this.checkCard;
    }

    public ChangeCodeWord(Parcel parcel) {
        CheckCardData checkCardData = null;
        String readString = parcel != null ? parcel.readString() : null;
        if (parcel != null) {
            checkCardData = (CheckCardData) parcel.readParcelable(CheckCardData.class.getClassLoader());
        }
        this(readString, checkCardData);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.text);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.checkCard, i);
        }
    }
}
