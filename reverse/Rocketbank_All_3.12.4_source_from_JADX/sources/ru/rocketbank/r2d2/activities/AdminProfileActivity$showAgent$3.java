package ru.rocketbank.r2d2.activities;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.v7.widget.Toolbar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdminProfileActivity.kt */
final class AdminProfileActivity$showAgent$3 implements AnimatorUpdateListener {
    final /* synthetic */ Toolbar $toolbar;
    final /* synthetic */ AdminProfileActivity this$0;

    AdminProfileActivity$showAgent$3(AdminProfileActivity adminProfileActivity, Toolbar toolbar) {
        this.this$0 = adminProfileActivity;
        this.$toolbar = toolbar;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        AdminProfileActivity adminProfileActivity = this.this$0;
        Toolbar toolbar = this.$toolbar;
        if (toolbar == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(valueAnimator, "animator");
        valueAnimator = valueAnimator.getAnimatedValue();
        if (valueAnimator == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
        }
        adminProfileActivity.setToolbar(toolbar, ((Float) valueAnimator).floatValue());
    }
}
