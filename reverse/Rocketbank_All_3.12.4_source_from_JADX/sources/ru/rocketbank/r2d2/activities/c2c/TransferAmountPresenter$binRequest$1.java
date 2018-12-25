package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.BinResponseData;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: TransferAmountPresenter.kt */
final class TransferAmountPresenter$binRequest$1 extends Lambda implements Function0<Observable<BinResponseData>> {
    final /* synthetic */ String $pan;
    final /* synthetic */ TransferAmountPresenter this$0;

    TransferAmountPresenter$binRequest$1(TransferAmountPresenter transferAmountPresenter, String str) {
        this.this$0 = transferAmountPresenter;
        this.$pan = str;
        super(0);
    }

    public final Observable<BinResponseData> invoke() {
        Observable<BinResponseData> observeOn = this.this$0.getCardManager().getBin(this.$pan).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "cardManager.getBin(pan).…dSchedulers.mainThread())");
        return observeOn;
    }
}
