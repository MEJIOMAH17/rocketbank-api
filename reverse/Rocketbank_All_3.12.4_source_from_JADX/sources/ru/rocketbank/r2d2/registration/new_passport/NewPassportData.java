package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.databinding.ObservableInt;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: NewPassportData.kt */
public final class NewPassportData {
    public static final Companion Companion = new Companion();
    public static final int PAGE_18 = 3;
    public static final int PAGE_MAIN = 1;
    public static final int PAGE_REGISTRATION = 2;
    public static final int READY = 4;
    private final ObservableInt step = new ObservableInt(1);

    /* compiled from: NewPassportData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    private final int getDrawable(int i, boolean z) {
        switch (i) {
            case 1:
                return z ? C0859R.drawable.ic_timeline_orange_1 : C0859R.drawable.ic_timeline_grey_1;
            case 2:
                return z ? C0859R.drawable.ic_timeline_orange_2 : C0859R.drawable.ic_timeline_grey_2;
            case 3:
                return z ? C0859R.drawable.ic_timeline_orange_3 : C0859R.drawable.ic_timeline_grey_3;
            default:
                return z ? C0859R.drawable.ic_timeline_orange_1 : C0859R.drawable.ic_timeline_grey_1;
        }
    }

    public final ObservableInt getStep() {
        return this.step;
    }

    public final Drawable selectImageForStep(int i, int i2) {
        Context context = RocketApplication.Companion.getContext();
        if (i < i2) {
            i = ContextCompat.getDrawable(context, C0859R.drawable.ic_timeline_check);
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(i, "ContextCompat.getDrawabl…able.ic_timeline_check)!!");
            return i;
        } else if (i == i2) {
            i = ContextCompat.getDrawable(context, getDrawable(i, 1));
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(i, "ContextCompat.getDrawabl…awable(itemStep, true))!!");
            return i;
        } else {
            i = ContextCompat.getDrawable(context, getDrawable(i, 0));
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(i, "ContextCompat.getDrawabl…wable(itemStep, false))!!");
            return i;
        }
    }
}
