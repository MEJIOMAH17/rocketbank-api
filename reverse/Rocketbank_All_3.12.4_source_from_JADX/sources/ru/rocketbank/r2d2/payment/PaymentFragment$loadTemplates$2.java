package ru.rocketbank.r2d2.payment;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.payment.PaymentFragment.TemplateAdapter;
import rx.Subscriber;

/* compiled from: PaymentFragment.kt */
public final class PaymentFragment$loadTemplates$2 extends Subscriber<List<? extends Template>> {
    final /* synthetic */ PaymentFragment this$0;

    public final void onCompleted() {
    }

    PaymentFragment$loadTemplates$2(PaymentFragment paymentFragment) {
        this.this$0 = paymentFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.getSwipeRefreshView().setRefreshing(false);
        th = this.this$0.getString(C0859R.string.template_load_failed);
        this.this$0.getProgressBar().setVisibility(8);
        View view = this.this$0.getView();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        RocketSnackbar.make$2c974f84(view, (CharSequence) th).setTextColor(-1).show();
    }

    public final void onNext(List<Template> list) {
        Intrinsics.checkParameterIsNotNull(list, "templates");
        this.this$0.getProgressBar().setVisibility(8);
        this.this$0.getSwipeRefreshView().setRefreshing(false);
        TemplateAdapter access$getTemplateAdapter$p = this.this$0.templateAdapter;
        if (access$getTemplateAdapter$p == null) {
            Intrinsics.throwNpe();
        }
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            boolean z;
            Template template = (Template) next;
            if (template.provider != null) {
                PaymentFragment paymentFragment = this.this$0;
                ProviderPayment providerPayment = template.provider;
                Intrinsics.checkExpressionValueIsNotNull(providerPayment, "it.provider");
                if (paymentFragment.getProvider(providerPayment.getProvider_id()) != null) {
                    z = true;
                    if (z) {
                        arrayList.add(next);
                    }
                }
            }
            z = false;
            if (z) {
                arrayList.add(next);
            }
        }
        access$getTemplateAdapter$p.setTemplatesList(CollectionsKt.toMutableList((List) arrayList));
        this.this$0.getTemplatesView().setVisibility(0);
    }
}
