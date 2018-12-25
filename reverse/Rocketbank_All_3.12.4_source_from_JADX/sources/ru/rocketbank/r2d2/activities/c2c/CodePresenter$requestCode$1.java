package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.card.Card2CardStatusResponseData;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: CodePresenter.kt */
final class CodePresenter$requestCode$1 extends Lambda implements Function0<Observable<Card2CardStatusResponseData>> {
    final /* synthetic */ int $id;
    final /* synthetic */ CodePresenter this$0;

    CodePresenter$requestCode$1(CodePresenter codePresenter, int i) {
        this.this$0 = codePresenter;
        this.$id = i;
        super(0);
    }

    public final Observable<Card2CardStatusResponseData> invoke() {
        Observable<Card2CardStatusResponseData> observeOn = CodePresenter.access$getCard2CardApi$p(this.this$0).status(this.$id).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "card2CardApi.status(id).…dSchedulers.mainThread())");
        return observeOn;
    }
}
