package ru.rocketbank.r2d2.payment;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment.FieldPayment;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$onCreateView$1 implements OnClickListener {
    final /* synthetic */ PaymentDetailsFragment this$0;

    PaymentDetailsFragment$onCreateView$1(PaymentDetailsFragment paymentDetailsFragment) {
        this.this$0 = paymentDetailsFragment;
    }

    public final void onClick(View view) {
        view = this.this$0.template;
        if (view == null) {
            view = new Template();
        }
        Provider access$getProvider$p = this.this$0.provider;
        view.title = access$getProvider$p != null ? access$getProvider$p.getName() : null;
        view.provider = new ProviderPayment();
        ProviderPayment providerPayment = view.provider;
        Intrinsics.checkExpressionValueIsNotNull(providerPayment, "t.provider");
        Set entrySet = this.this$0._paymentFields.entrySet();
        Intrinsics.checkExpressionValueIsNotNull(entrySet, "_paymentFields.entries");
        Iterable<Entry> iterable = entrySet;
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (Entry entry : iterable) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            Intrinsics.checkExpressionValueIsNotNull(value, "it.value");
            arrayList.add(new FieldPayment(str, ((IPaymentFieldWidget) value).getParameterValue()));
        }
        providerPayment.setFields((List) arrayList);
        FragmentActivity activity = this.this$0.getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentDetailsActivity");
        }
        PaymentDetailsActivity paymentDetailsActivity = (PaymentDetailsActivity) activity;
        Provider access$getProvider$p2 = this.this$0.provider;
        if (access$getProvider$p2 == null) {
            Intrinsics.throwNpe();
        }
        paymentDetailsActivity.replaceAmountFragment(access$getProvider$p2, view);
    }
}
