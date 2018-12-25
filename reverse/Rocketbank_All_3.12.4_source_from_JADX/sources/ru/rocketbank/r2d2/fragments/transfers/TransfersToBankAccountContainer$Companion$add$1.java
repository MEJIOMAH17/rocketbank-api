package ru.rocketbank.r2d2.fragments.transfers;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;

/* compiled from: TransfersToBankAccountContainer.kt */
final class TransfersToBankAccountContainer$Companion$add$1 extends Lambda implements Function2<ArrayList<TransfersModelUrFiz>, ArrayList<TransfersModelUrFiz>, Unit> {
    public static final TransfersToBankAccountContainer$Companion$add$1 INSTANCE = new TransfersToBankAccountContainer$Companion$add$1();

    TransfersToBankAccountContainer$Companion$add$1() {
        super(2);
    }

    public final void invoke(ArrayList<TransfersModelUrFiz> arrayList, ArrayList<TransfersModelUrFiz> arrayList2) {
        Intrinsics.checkParameterIsNotNull(arrayList2, "array");
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
    }
}
