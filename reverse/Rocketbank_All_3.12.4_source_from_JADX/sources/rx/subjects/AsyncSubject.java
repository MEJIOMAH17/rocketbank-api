package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;
import rx.internal.producers.SingleProducer;

public final class AsyncSubject<T> extends Subject<T, T> {
    volatile Object lastValue;
    final SubjectSubscriptionManager<T> state;

    public static <T> AsyncSubject<T> create() {
        final Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new Action1<SubjectObserver<T>>() {
            public final void call(SubjectObserver<T> subjectObserver) {
                Object latest = subjectSubscriptionManager.getLatest();
                if (latest != null) {
                    if (!NotificationLite.isCompleted(latest)) {
                        if (NotificationLite.isError(latest)) {
                            subjectObserver.onError(NotificationLite.getError(latest));
                            return;
                        } else {
                            subjectObserver.actual.setProducer(new SingleProducer(subjectObserver.actual, NotificationLite.getValue(latest)));
                            return;
                        }
                    }
                }
                subjectObserver.onCompleted();
            }
        };
        return new AsyncSubject(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected AsyncSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.state = subjectSubscriptionManager;
    }

    public final void onCompleted() {
        if (this.state.active) {
            Object obj = this.lastValue;
            if (obj == null) {
                obj = NotificationLite.completed();
            }
            for (SubjectObserver subjectObserver : this.state.terminate(obj)) {
                if (obj == NotificationLite.completed()) {
                    subjectObserver.onCompleted();
                } else {
                    subjectObserver.actual.setProducer(new SingleProducer(subjectObserver.actual, NotificationLite.getValue(obj)));
                }
            }
        }
    }

    public final void onError(Throwable th) {
        if (this.state.active) {
            List list = null;
            for (SubjectObserver onError : this.state.terminate(NotificationLite.error(th))) {
                try {
                    onError.onError(th);
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th2);
                }
            }
            Exceptions.throwIfAny(list);
        }
    }

    public final void onNext(T t) {
        this.lastValue = NotificationLite.next(t);
    }

    public final boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    public final boolean hasValue() {
        return !NotificationLite.isError(this.state.getLatest()) && NotificationLite.isNext(this.lastValue);
    }

    public final boolean hasThrowable() {
        return NotificationLite.isError(this.state.getLatest());
    }

    public final boolean hasCompleted() {
        Object latest = this.state.getLatest();
        return (latest == null || NotificationLite.isError(latest)) ? false : true;
    }

    public final T getValue() {
        Object obj = this.lastValue;
        return (NotificationLite.isError(this.state.getLatest()) || !NotificationLite.isNext(obj)) ? null : NotificationLite.getValue(obj);
    }

    public final Throwable getThrowable() {
        Object latest = this.state.getLatest();
        return NotificationLite.isError(latest) ? NotificationLite.getError(latest) : null;
    }
}
