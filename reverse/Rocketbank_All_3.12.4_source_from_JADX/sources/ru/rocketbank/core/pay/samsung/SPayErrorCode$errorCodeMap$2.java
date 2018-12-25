package ru.rocketbank.core.pay.samsung;

import android.util.SparseArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: SPayErrorCode.kt */
final class SPayErrorCode$errorCodeMap$2 extends Lambda implements Function0<SparseArray<String>> {
    public static final SPayErrorCode$errorCodeMap$2 INSTANCE = new SPayErrorCode$errorCodeMap$2();

    SPayErrorCode$errorCodeMap$2() {
        super(0);
    }

    public final SparseArray<String> invoke() {
        SPayErrorCode sPayErrorCode = SPayErrorCode.INSTANCE;
        return SPayErrorCode.access$initCodeMap$688278bc();
    }
}
