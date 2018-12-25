package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Friend;

/* compiled from: FriendOperation.kt */
public final class FriendOperation extends AbstractOperation implements Parcelable, Serializable {
    public static final Creator<FriendOperation> CREATOR = new FriendOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private String body;
    private Friend friend;

    /* compiled from: FriendOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final Friend getFriend() {
        return this.friend;
    }

    public final void setFriend(Friend friend) {
        this.friend = friend;
    }

    protected FriendOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        super(parcel);
        this.friend = (Friend) parcel.readParcelable(Friend.class.getClassLoader());
        this.body = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel == null) {
            Intrinsics.throwNpe();
        }
        parcel.writeParcelable(this.friend, i);
        parcel.writeString(this.body);
    }

    public final String getBody() {
        return this.body;
    }

    public final void setBody(String str) {
        Intrinsics.checkParameterIsNotNull(str, "body");
        this.body = StringsKt__StringsJVMKt.replace$default(str, "ђ", "₽", false, 4, null);
    }
}
