package ru.rocketbank.r2d2.fragments.refill.cash;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: AtmType.kt */
public final class AtmType {
    public static final AtmType INSTANCE = new AtmType();
    private static final String MKB_ATM_WITH_COMMISSION = "mkb_atm_with_commission";
    private static final String MKB_WITH_COMMISSION = "mkb_with_commission";
    private static final String OPENBANK_ATM = "open_atm";
    private static final String OPENBANK_OFFICE = "open_office";

    private AtmType() {
    }

    public final String getOPENBANK_ATM() {
        return OPENBANK_ATM;
    }

    public final String getOPENBANK_OFFICE() {
        return OPENBANK_OFFICE;
    }

    public final String getMKB_WITH_COMMISSION() {
        return MKB_WITH_COMMISSION;
    }

    public final String getMKB_ATM_WITH_COMMISSION() {
        return MKB_ATM_WITH_COMMISSION;
    }

    public static /* bridge */ /* synthetic */ int getDrawableId$default(AtmType atmType, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return atmType.getDrawableId(str, z);
    }

    public final int getDrawableId(String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "type");
        return Intrinsics.areEqual(str, OPENBANK_OFFICE) ? z ? C0859R.drawable.pin_bank_active : C0859R.drawable.pin_bank : Intrinsics.areEqual(str, OPENBANK_ATM) ? z ? C0859R.drawable.pin_bankomat_active : C0859R.drawable.pin_bankomat : Intrinsics.areEqual(str, MKB_WITH_COMMISSION) ? z ? C0859R.drawable.mkb_office_active : C0859R.drawable.mkb_office : Intrinsics.areEqual(str, MKB_ATM_WITH_COMMISSION) != null ? z ? C0859R.drawable.mkb_terminal_active : C0859R.drawable.mkb_terminal : z ? C0859R.drawable.pin_bankomat_active : C0859R.drawable.pin_bankomat;
    }

    public final AtmInstructionType instructionType(String str) {
        Intrinsics.checkParameterIsNotNull(str, "type");
        if (!Intrinsics.areEqual(str, OPENBANK_ATM)) {
            if (!Intrinsics.areEqual(str, MKB_ATM_WITH_COMMISSION)) {
                if (Intrinsics.areEqual(str, MKB_WITH_COMMISSION)) {
                    return AtmInstructionType.TERMINAL;
                }
                if (Intrinsics.areEqual(str, OPENBANK_OFFICE) != null) {
                    return AtmInstructionType.OFFICE;
                }
                return AtmInstructionType.ATM;
            }
        }
        return AtmInstructionType.ATM;
    }

    public final String limits(String str, Context context) {
        Intrinsics.checkParameterIsNotNull(str, "type");
        Intrinsics.checkParameterIsNotNull(context, "context");
        if (!Intrinsics.areEqual(str, MKB_WITH_COMMISSION)) {
            if (Intrinsics.areEqual(str, MKB_ATM_WITH_COMMISSION) == null) {
                return null;
            }
        }
        return context.getString(C0859R.string.mkb_refill_limits);
    }
}
