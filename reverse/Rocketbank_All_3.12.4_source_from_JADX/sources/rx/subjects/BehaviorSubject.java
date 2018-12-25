package rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;

public final class BehaviorSubject<T> extends Subject<T, T> {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    private final SubjectSubscriptionManager<T> state;

    public static <T> BehaviorSubject<T> create() {
        return create(null, false);
    }

    public static <T> BehaviorSubject<T> create(T t) {
        return create(t, true);
    }

    private static <T> BehaviorSubject<T> create(T t, boolean z) {
        final Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        if (z) {
            subjectSubscriptionManager.setLatest(NotificationLite.next(t));
        }
        subjectSubscriptionManager.onAdded = new Action1<SubjectObserver<T>>() {
            public final void call(SubjectObserver<T> subjectObserver) {
                subjectObserver.emitFirst(subjectSubscriptionManager.getLatest());
            }
        };
        subjectSubscriptionManager.onTerminated = subjectSubscriptionManager.onAdded;
        return new BehaviorSubject(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected BehaviorSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.state = subjectSubscriptionManager;
    }

    public final void onCompleted() {
        if (this.state.getLatest() == null || this.state.active) {
            Object completed = NotificationLite.completed();
            for (SubjectObserver emitNext : this.state.terminate(completed)) {
                emitNext.emitNext(completed);
            }
        }
    }

    public final void onError(Throwable th) {
        if (this.state.getLatest() == null || this.state.active) {
            th = NotificationLite.error(th);
            List list = null;
            for (SubjectObserver emitNext : this.state.terminate(th)) {
                try {
                    emitNext.emitNext(th);
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
        if (this.state.getLatest() == null || this.state.active) {
            t = NotificationLite.next(t);
            for (SubjectObserver emitNext : this.state.next(t)) {
                emitNext.emitNext(t);
            }
        }
    }

    final int subscriberCount() {
        return this.state.observers().length;
    }

    public final boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    public final boolean hasValue() {
        return NotificationLite.isNext(this.state.getLatest());
    }

    public final boolean hasThrowable() {
        return NotificationLite.isError(this.state.getLatest());
    }

    public final boolean hasCompleted() {
        return NotificationLite.isCompleted(this.state.getLatest());
    }

    public final T getValue() {
        Object latest = this.state.getLatest();
        return NotificationLite.isNext(latest) ? NotificationLite.getValue(latest) : null;
    }

    public final Throwable getThrowable() {
        Object latest = this.state.getLatest();
        return NotificationLite.isError(latest) ? NotificationLite.getError(latest) : null;
    }

    public final T[] getValues(T[] tArr) {
        Object latest = this.state.getLatest();
        if (NotificationLite.isNext(latest)) {
            if (tArr.length == 0) {
                tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1);
            }
            tArr[0] = NotificationLite.getValue(latest);
            if (tArr.length > 1) {
                tArr[1] = null;
            }
        } else if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    public final Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }
}
