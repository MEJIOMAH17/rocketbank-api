package ru.rocketbank.r2d2.fragments.refill.card;

import android.support.design.widget.Snackbar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: RefillFromCardFragment.kt */
public final class RefillFromCardFragment$hideCard$1 extends Subscriber<GenericRequestResponseData> {
    final /* synthetic */ CardModel $cardModel;
    final /* synthetic */ RefillFromCardFragment this$0;

    public final void onCompleted() {
    }

    RefillFromCardFragment$hideCard$1(RefillFromCardFragment refillFromCardFragment, CardModel cardModel) {
        this.this$0 = refillFromCardFragment;
        this.$cardModel = cardModel;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideSpinner();
        th = this.this$0.getView();
        if (th == null) {
            Intrinsics.throwNpe();
        }
        Snackbar.make(th, C0859R.string.no_luck_try_again_later, 0).show();
        this.this$0.getTemplateManager().refreshTemplates();
    }

    public final void onNext(ru.rocketbank.core.model.dto.GenericRequestResponseData r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r1 = this;
        r0 = "genericRequestResponseData";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r2 = r1.this$0;
        r2.hideSpinner();
        r2 = r1.this$0;
        r2 = r2.listAdapter;
        if (r2 != 0) goto L_0x0015;
    L_0x0012:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0015:
        r0 = r1.$cardModel;
        r2.remove(r0);
        r2 = r1.this$0;
        r2 = r2.listAdapter;
        if (r2 != 0) goto L_0x0025;
    L_0x0022:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0025:
        r2.notifyDataSetChanged();
        r2 = r1.this$0;	 Catch:{ Exception -> 0x0046 }
        r2 = r2.userModel;	 Catch:{ Exception -> 0x0046 }
        if (r2 != 0) goto L_0x0033;	 Catch:{ Exception -> 0x0046 }
    L_0x0030:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0046 }
    L_0x0033:
        r2 = r2.getLinkedCards();	 Catch:{ Exception -> 0x0046 }
        r0 = r1.$cardModel;	 Catch:{ Exception -> 0x0046 }
        r2.remove(r0);	 Catch:{ Exception -> 0x0046 }
        r2 = r1.this$0;	 Catch:{ Exception -> 0x0046 }
        r2 = r2.getAuthorization();	 Catch:{ Exception -> 0x0046 }
        r2.refreshBackgroundProfile();	 Catch:{ Exception -> 0x0046 }
        return;
    L_0x0046:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.refill.card.RefillFromCardFragment$hideCard$1.onNext(ru.rocketbank.core.model.dto.GenericRequestResponseData):void");
    }
}
