package ru.rocketbank.core.model.shop;

import java.util.List;
import ru.rocketbank.core.realm.RealmCartItem;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: CartStorage.kt */
final class CartStorage$readObservable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ CartStorage this$0;

    CartStorage$readObservable$1(CartStorage cartStorage) {
        this.this$0 = cartStorage;
    }

    public final void call(Subscriber<? super List<? extends RealmCartItem>> subscriber) {
        subscriber.onNext(this.this$0.read());
        subscriber.onCompleted();
    }
}
