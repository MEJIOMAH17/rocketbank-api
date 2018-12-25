package ru.rocketbank.core.manager.loader;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subjects.PublishSubject;
import rx.subjects.SerializedSubject;
import rx.subjects.Subject;

/* compiled from: OperationLoader.kt */
public abstract class OperationLoader implements OperationLoaderInterface {
    private final Observable<FeedItem> feedObservable;
    private final Subject<FeedItem, FeedItem> feedSubjectSubject = new SerializedSubject(PublishSubject.create());

    public OperationLoader() {
        Observable refCount = this.feedSubjectSubject.asObservable().subscribeOn(Schedulers.computation()).publish().refCount();
        Intrinsics.checkExpressionValueIsNotNull(refCount, "feedSubjectSubject.asObs…n()).publish().refCount()");
        this.feedObservable = refCount;
    }

    public Observable<FeedItem> changeObservable() {
        Observable<FeedItem> observeOn = this.feedSubjectSubject.observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "feedSubjectSubject.obser…dSchedulers.mainThread())");
        return observeOn;
    }

    public final void notifyItemChange(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        if (this.feedSubjectSubject.hasObservers()) {
            this.feedSubjectSubject.onNext(feedItem);
        }
    }
}
