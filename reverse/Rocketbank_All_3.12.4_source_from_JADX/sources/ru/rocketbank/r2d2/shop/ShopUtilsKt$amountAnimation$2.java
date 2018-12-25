package ru.rocketbank.r2d2.shop;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketTextView;

/* compiled from: ShopUtils.kt */
public final class ShopUtilsKt$amountAnimation$2 extends ValueAnimator implements AnimatorListener {
    final /* synthetic */ Authorization $authorization;
    final /* synthetic */ double $end;
    final /* synthetic */ Function1 $format;
    final /* synthetic */ RocketTextView $textView;

    public final void onAnimationCancel(Animator animator) {
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }

    ShopUtilsKt$amountAnimation$2(RocketTextView rocketTextView, Function1 function1, double d, Authorization authorization) {
        this.$textView = rocketTextView;
        this.$format = function1;
        this.$end = d;
        this.$authorization = authorization;
    }

    public final void onAnimationEnd(Animator animator) {
        animator = this.$textView;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append((String) this.$format.invoke(Double.valueOf(this.$end)));
        Context context = this.$textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "textView.context");
        Resources resources = context.getResources();
        UserData userData = this.$authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        stringBuilder.append(resources.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), (int) this.$end));
        animator.setText(stringBuilder.toString());
    }
}
