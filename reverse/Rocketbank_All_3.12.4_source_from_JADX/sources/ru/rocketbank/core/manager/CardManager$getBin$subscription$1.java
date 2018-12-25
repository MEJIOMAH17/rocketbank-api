package ru.rocketbank.core.manager;

import ru.rocketbank.core.model.dto.BinResponseData;
import rx.Subscriber;
import rx.subjects.BehaviorSubject;

/* compiled from: CardManager.kt */
public final class CardManager$getBin$subscription$1 extends Subscriber<BinResponseData> {
    final /* synthetic */ String $bin;
    final /* synthetic */ BehaviorSubject $requestSubject;
    final /* synthetic */ CardManager this$0;

    public final void onCompleted() {
    }

    CardManager$getBin$subscription$1(CardManager cardManager, BehaviorSubject behaviorSubject, String str) {
        this.this$0 = cardManager;
        this.$requestSubject = behaviorSubject;
        this.$bin = str;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        this.$requestSubject.onNext((BinResponseData) obj);
    }

    public final void onError(Throwable th) {
        this.$requestSubject.onError(th);
        this.this$0.getBinCache().remove(this.$bin);
    }
}
