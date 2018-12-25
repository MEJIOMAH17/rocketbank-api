package ru.rocketbank.r2d2.fragments.transfers;

import android.support.design.widget.Snackbar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: TransfersFromCardFragment.kt */
public final class TransfersFromCardFragment$hideCard$1 extends Subscriber<GenericRequestResponseData> {
    final /* synthetic */ CardModel $cardModel;
    final /* synthetic */ TransfersFromCardFragment this$0;

    public final void onCompleted() {
    }

    TransfersFromCardFragment$hideCard$1(TransfersFromCardFragment transfersFromCardFragment, CardModel cardModel) {
        this.this$0 = transfersFromCardFragment;
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
        r2 = r1.this$0;	 Catch:{ Exception -> 0x0037 }
        r2 = r2.userModel;	 Catch:{ Exception -> 0x0037 }
        if (r2 != 0) goto L_0x0025;	 Catch:{ Exception -> 0x0037 }
    L_0x0022:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0037 }
    L_0x0025:
        r2 = r2.getTransferLinkedCards();	 Catch:{ Exception -> 0x0037 }
        r0 = r1.$cardModel;	 Catch:{ Exception -> 0x0037 }
        r2.remove(r0);	 Catch:{ Exception -> 0x0037 }
        r2 = r1.this$0;	 Catch:{ Exception -> 0x0037 }
        r2 = r2.getAuthorization();	 Catch:{ Exception -> 0x0037 }
        r2.refreshBackgroundProfile();	 Catch:{ Exception -> 0x0037 }
    L_0x0037:
        r2 = r1.this$0;
        r2 = r2.getTemplateManager();
        r2.refreshTemplates();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.TransfersFromCardFragment$hideCard$1.onNext(ru.rocketbank.core.model.dto.GenericRequestResponseData):void");
    }
}
