package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ChangeCheckCard;

/* compiled from: ChangeShortCode.kt */
public final class ChangeShortCode extends ChangeCheckCard {
    public static final Creator<ChangeShortCode> CREATOR = new ChangeShortCode$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();

    /* compiled from: ChangeShortCode.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    protected ChangeShortCode(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        super(parcel);
    }
}
