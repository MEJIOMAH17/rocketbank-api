package ru.rocketbank.r2d2.root.operation.data;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: SourceViewData.kt */
public final class SourceViewData {
    private final String icon;
    private final String text;

    public static /* bridge */ /* synthetic */ SourceViewData copy$default(SourceViewData sourceViewData, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sourceViewData.icon;
        }
        if ((i & 2) != 0) {
            str2 = sourceViewData.text;
        }
        return sourceViewData.copy(str, str2);
    }

    public final String component1() {
        return this.icon;
    }

    public final String component2() {
        return this.text;
    }

    public final SourceViewData copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        return new SourceViewData(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SourceViewData) {
                SourceViewData sourceViewData = (SourceViewData) obj;
                if (Intrinsics.areEqual(this.icon, sourceViewData.icon) && Intrinsics.areEqual(this.text, sourceViewData.text)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.icon;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.text;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SourceViewData(icon=");
        stringBuilder.append(this.icon);
        stringBuilder.append(", text=");
        stringBuilder.append(this.text);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public SourceViewData(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        this.icon = str;
        this.text = str2;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getText() {
        return this.text;
    }
}
