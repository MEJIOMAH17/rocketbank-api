package ru.rocketbank.core.events;

import android.support.v4.app.Fragment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NextButtonEvent.kt */
public final class NextButtonEvent {
    private final Fragment fragment;
    private final boolean isEnable;
    private final String title;
    private final Integer visibility;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NextButtonEvent) {
            NextButtonEvent nextButtonEvent = (NextButtonEvent) obj;
            if (Intrinsics.areEqual(this.fragment, nextButtonEvent.fragment)) {
                return (this.isEnable == nextButtonEvent.isEnable) && Intrinsics.areEqual(this.visibility, nextButtonEvent.visibility) && Intrinsics.areEqual(this.title, nextButtonEvent.title);
            }
        }
    }

    public final int hashCode() {
        Fragment fragment = this.fragment;
        int i = 0;
        int hashCode = (fragment != null ? fragment.hashCode() : 0) * 31;
        int i2 = this.isEnable;
        if (i2 != 0) {
            i2 = 1;
        }
        hashCode = (hashCode + i2) * 31;
        Integer num = this.visibility;
        hashCode = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.title;
        if (str != null) {
            i = str.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("NextButtonEvent(fragment=");
        stringBuilder.append(this.fragment);
        stringBuilder.append(", isEnable=");
        stringBuilder.append(this.isEnable);
        stringBuilder.append(", visibility=");
        stringBuilder.append(this.visibility);
        stringBuilder.append(", title=");
        stringBuilder.append(this.title);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public NextButtonEvent(Fragment fragment, boolean z, Integer num, String str) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        this.fragment = fragment;
        this.isEnable = z;
        this.visibility = num;
        this.title = str;
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    public final boolean isEnable() {
        return this.isEnable;
    }

    public final Integer getVisibility() {
        return this.visibility;
    }

    public final String getTitle() {
        return this.title;
    }
}
