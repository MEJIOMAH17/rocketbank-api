package ru.rocketbank.r2d2.root.analytics;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;

/* compiled from: AnalyticsUtils.kt */
final class AnalyticsUtils$amountAnimation$1 implements AnimatorUpdateListener {
    final /* synthetic */ Function1 $format;
    final /* synthetic */ RocketTextView $textView;

    AnalyticsUtils$amountAnimation$1(RocketTextView rocketTextView, Function1 function1) {
        this.$textView = rocketTextView;
        this.$format = function1;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        RocketTextView rocketTextView = this.$textView;
        StringBuilder stringBuilder = new StringBuilder();
        Function1 function1 = this.$format;
        Intrinsics.checkExpressionValueIsNotNull(valueAnimator, "animation");
        valueAnimator = valueAnimator.getAnimatedValue();
        if (valueAnimator == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
        stringBuilder.append((String) function1.invoke(Double.valueOf((double) ((Integer) valueAnimator).intValue())));
        rocketTextView.setText(stringBuilder.toString());
    }
}
