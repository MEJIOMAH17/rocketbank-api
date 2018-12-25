package ru.rocketbank.core.model.transfers.bank;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.internal.ServerProtocol;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.CollectionUtilsKt;

/* compiled from: RemittanceOutgoing.kt */
public final class RemittanceOutgoing$Companion$CREATOR$1 implements Creator<RemittanceOutgoing> {
    RemittanceOutgoing$Companion$CREATOR$1() {
    }

    public final RemittanceOutgoing createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        Bundle readBundle = parcel.readBundle(Bundle.class.getClassLoader());
        Intrinsics.checkExpressionValueIsNotNull(readBundle, "parcel.readBundle(Bundle::class.java.classLoader)");
        RemittanceOutgoing remittanceOutgoing = new RemittanceOutgoing(CollectionUtilsKt.fromBundle(readBundle));
        remittanceOutgoing.setCardAccount(parcel.readString());
        remittanceOutgoing.setRemittance_kind(parcel.readString());
        boolean z = true;
        if (parcel.readByte() != 1) {
            z = false;
        }
        remittanceOutgoing.setGkh(z);
        remittanceOutgoing.setVat(Boolean.valueOf(Intrinsics.areEqual((String) remittanceOutgoing.getMap().get("nds"), ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)));
        remittanceOutgoing.setBesp(Boolean.valueOf(Intrinsics.areEqual((String) remittanceOutgoing.getMap().get("besp"), ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)));
        return remittanceOutgoing;
    }

    public final RemittanceOutgoing[] newArray(int i) {
        return new RemittanceOutgoing[i];
    }
}
