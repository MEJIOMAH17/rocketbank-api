package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.Pair;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.r2d2.payment.ProvidersAdapter.ViewHolder;
import rx.functions.Action2;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$onViewCreated$1<T1, T2> implements Action2<ViewHolder, Provider> {
    final /* synthetic */ PaymentProvidersFragment this$0;

    PaymentProvidersFragment$onViewCreated$1(PaymentProvidersFragment paymentProvidersFragment) {
        this.this$0 = paymentProvidersFragment;
    }

    public final void call(ViewHolder viewHolder, Provider provider) {
        Context context;
        if (VERSION.SDK_INT >= 21) {
            Bundle bundle = new Bundle();
            bundle.putString("a", viewHolder.getAvatar().getTransitionName());
            bundle.putString("n", viewHolder.getName().getTransitionName());
            FragmentActivity activity = this.this$0.getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            viewHolder = ActivityOptionsCompat.makeSceneTransitionAnimation(activity, new Pair[]{new Pair(viewHolder.getAvatar(), viewHolder.getAvatar().getTransitionName()), new Pair(viewHolder.getName(), viewHolder.getName().getTransitionName()), new Pair(viewHolder.getRoot(), viewHolder.getRoot().getTransitionName())});
            context = this.this$0.getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            Intrinsics.checkExpressionValueIsNotNull(provider, "p");
            PaymentDetailsActivityStarterKt.startPaymentActivity(context, provider, null, bundle, viewHolder.toBundle());
            return;
        }
        viewHolder = this.this$0.getActivity();
        if (viewHolder == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(viewHolder, "activity!!");
        context = (Context) viewHolder;
        Intrinsics.checkExpressionValueIsNotNull(provider, "p");
        PaymentDetailsActivityStarterKt.startPaymentActivity$default(context, provider, null, null, null, 24, null);
    }
}
