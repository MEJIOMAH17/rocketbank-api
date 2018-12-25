package ru.rocketbank.r2d2.fragments.transfers;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransferBankFragment.kt */
public final class CodeNameOption implements Comparable<CodeNameOption> {
    private final String code;
    private final String name;

    public static /* bridge */ /* synthetic */ CodeNameOption copy$default(CodeNameOption codeNameOption, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = codeNameOption.code;
        }
        if ((i & 2) != 0) {
            str2 = codeNameOption.name;
        }
        return codeNameOption.copy(str, str2);
    }

    public final String component1() {
        return this.code;
    }

    public final String component2() {
        return this.name;
    }

    public final CodeNameOption copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "code");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        return new CodeNameOption(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CodeNameOption) {
                CodeNameOption codeNameOption = (CodeNameOption) obj;
                if (Intrinsics.areEqual(this.code, codeNameOption.code) && Intrinsics.areEqual(this.name, codeNameOption.name)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.code;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public CodeNameOption(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "code");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        this.code = str;
        this.name = str2;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getName() {
        return this.name;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("\"");
        stringBuilder.append(this.code);
        stringBuilder.append("\" – ");
        stringBuilder.append(this.name);
        return stringBuilder.toString();
    }

    public final int compareTo(CodeNameOption codeNameOption) {
        Intrinsics.checkParameterIsNotNull(codeNameOption, FacebookRequestErrorClassification.KEY_OTHER);
        if (Intrinsics.areEqual(this.code, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            return -1;
        }
        if (Intrinsics.areEqual(codeNameOption.code, AppEventsConstants.EVENT_PARAM_VALUE_NO) || Intrinsics.areEqual(this.code, "00")) {
            return 1;
        }
        if (Intrinsics.areEqual(codeNameOption.code, "00")) {
            return -1;
        }
        return this.code.compareTo(codeNameOption.code);
    }
}
