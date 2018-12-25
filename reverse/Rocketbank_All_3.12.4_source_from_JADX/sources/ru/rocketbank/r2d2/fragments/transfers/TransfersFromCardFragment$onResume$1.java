package ru.rocketbank.r2d2.fragments.transfers;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.TransferTemplates;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;
import rx.Subscriber;

/* compiled from: TransfersFromCardFragment.kt */
public final class TransfersFromCardFragment$onResume$1 extends Subscriber<TransferTemplates> {
    final /* synthetic */ TransfersFromCardFragment this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    TransfersFromCardFragment$onResume$1(TransfersFromCardFragment transfersFromCardFragment) {
        this.this$0 = transfersFromCardFragment;
    }

    public final void onNext(TransferTemplates transferTemplates) {
        Intrinsics.checkParameterIsNotNull(transferTemplates, "transferTemplates");
        ArrayList card2card = transferTemplates.getCard2card();
        if (card2card == null) {
            Intrinsics.throwNpe();
        }
        ArrayList arrayList = new ArrayList(card2card.size());
        transferTemplates = transferTemplates.getCard2card();
        if (transferTemplates == null) {
            Intrinsics.throwNpe();
        }
        transferTemplates = transferTemplates.iterator();
        while (transferTemplates.hasNext()) {
            TransfersModelUrFiz transfersModelUrFiz = (TransfersModelUrFiz) transferTemplates.next();
            Intrinsics.checkExpressionValueIsNotNull(transfersModelUrFiz, "transfersModelUrFiz");
            arrayList.add(new CardModel(transfersModelUrFiz));
        }
        transferTemplates = this.this$0.listAdapter;
        if (transferTemplates == null) {
            Intrinsics.throwNpe();
        }
        transferTemplates.setData(arrayList);
    }
}
