package rx.internal.operators;

import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Single;
import rx.SingleSubscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

public final class CompletableFlatMapSingleToCompletable<T> implements OnSubscribe {
    final Func1<? super T, ? extends Completable> mapper;
    final Single<T> source;

    static final class SourceSubscriber<T> extends SingleSubscriber<T> implements CompletableSubscriber {
        final CompletableSubscriber actual;
        final Func1<? super T, ? extends Completable> mapper;

        public SourceSubscriber(CompletableSubscriber completableSubscriber, Func1<? super T, ? extends Completable> func1) {
            this.actual = completableSubscriber;
            this.mapper = func1;
        }

        public final void onSuccess(T t) {
            try {
                Completable completable = (Completable) this.mapper.call(t);
                if (completable == null) {
                    onError(new NullPointerException("The mapper returned a null Completable"));
                } else {
                    completable.subscribe((CompletableSubscriber) this);
                }
            } catch (T t2) {
                Exceptions.throwIfFatal(t2);
                onError(t2);
            }
        }

        public final void onError(Throwable th) {
            this.actual.onError(th);
        }

        public final void onCompleted() {
            this.actual.onCompleted();
        }

        public final void onSubscribe(Subscription subscription) {
            add(subscription);
        }
    }

    public CompletableFlatMapSingleToCompletable(Single<T> single, Func1<? super T, ? extends Completable> func1) {
        this.source = single;
        this.mapper = func1;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        SingleSubscriber sourceSubscriber = new SourceSubscriber(completableSubscriber, this.mapper);
        completableSubscriber.onSubscribe(sourceSubscriber);
        this.source.subscribe(sourceSubscriber);
    }
}
