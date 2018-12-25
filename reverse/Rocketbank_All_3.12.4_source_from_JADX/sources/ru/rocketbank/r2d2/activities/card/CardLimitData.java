package ru.rocketbank.r2d2.activities.card;

import android.databinding.ObservableBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: CardLimitData.kt */
public final class CardLimitData {
    private final ObservableBoolean enabled;
    private final int icon;
    private final int textDisabled;
    private final int textEnabled;
    private final int title;

    public static /* bridge */ /* synthetic */ CardLimitData copy$default(CardLimitData cardLimitData, int i, int i2, int i3, int i4, ObservableBoolean observableBoolean, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = cardLimitData.title;
        }
        if ((i5 & 2) != 0) {
            i2 = cardLimitData.textEnabled;
        }
        int i6 = i2;
        if ((i5 & 4) != 0) {
            i3 = cardLimitData.textDisabled;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            i4 = cardLimitData.icon;
        }
        int i8 = i4;
        if ((i5 & 16) != 0) {
            observableBoolean = cardLimitData.enabled;
        }
        return cardLimitData.copy(i, i6, i7, i8, observableBoolean);
    }

    public final int component1() {
        return this.title;
    }

    public final int component2() {
        return this.textEnabled;
    }

    public final int component3() {
        return this.textDisabled;
    }

    public final int component4() {
        return this.icon;
    }

    public final ObservableBoolean component5() {
        return this.enabled;
    }

    public final CardLimitData copy(int i, int i2, int i3, int i4, ObservableBoolean observableBoolean) {
        Intrinsics.checkParameterIsNotNull(observableBoolean, "enabled");
        return new CardLimitData(i, i2, i3, i4, observableBoolean);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CardLimitData) {
            CardLimitData cardLimitData = (CardLimitData) obj;
            if (this.title == cardLimitData.title) {
                if (this.textEnabled == cardLimitData.textEnabled) {
                    if (this.textDisabled == cardLimitData.textDisabled) {
                        return (this.icon == cardLimitData.icon) && Intrinsics.areEqual(this.enabled, cardLimitData.enabled);
                    }
                }
            }
        }
    }

    public final int hashCode() {
        int i = ((((((this.title * 31) + this.textEnabled) * 31) + this.textDisabled) * 31) + this.icon) * 31;
        ObservableBoolean observableBoolean = this.enabled;
        return i + (observableBoolean != null ? observableBoolean.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CardLimitData(title=");
        stringBuilder.append(this.title);
        stringBuilder.append(", textEnabled=");
        stringBuilder.append(this.textEnabled);
        stringBuilder.append(", textDisabled=");
        stringBuilder.append(this.textDisabled);
        stringBuilder.append(", icon=");
        stringBuilder.append(this.icon);
        stringBuilder.append(", enabled=");
        stringBuilder.append(this.enabled);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CardLimitData(int i, int i2, int i3, int i4, ObservableBoolean observableBoolean) {
        Intrinsics.checkParameterIsNotNull(observableBoolean, "enabled");
        this.title = i;
        this.textEnabled = i2;
        this.textDisabled = i3;
        this.icon = i4;
        this.enabled = observableBoolean;
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getTextEnabled() {
        return this.textEnabled;
    }

    public final int getTextDisabled() {
        return this.textDisabled;
    }

    public final int getIcon() {
        return this.icon;
    }

    public /* synthetic */ CardLimitData(int i, int i2, int i3, int i4, ObservableBoolean observableBoolean, int i5, Ref ref) {
        if ((i5 & 16) != 0) {
            observableBoolean = new ObservableBoolean((boolean) 0);
        }
        this(i, i2, i3, i4, observableBoolean);
    }

    public final ObservableBoolean getEnabled() {
        return this.enabled;
    }
}
