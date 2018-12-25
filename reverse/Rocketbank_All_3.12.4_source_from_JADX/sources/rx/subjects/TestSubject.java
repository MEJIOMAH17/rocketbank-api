package rx.subjects;

import java.util.concurrent.TimeUnit;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;
import rx.schedulers.TestScheduler;

public final class TestSubject<T> extends Subject<T, T> {
    private final Worker innerScheduler;
    private final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.TestSubject$2 */
    class C21312 implements Action0 {
        C21312() {
        }

        public void call() {
            TestSubject.this.internalOnCompleted();
        }
    }

    public static <T> TestSubject<T> create(TestScheduler testScheduler) {
        final Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onAdded = new Action1<SubjectObserver<T>>() {
            public final void call(SubjectObserver<T> subjectObserver) {
                subjectObserver.emitFirst(subjectSubscriptionManager.getLatest());
            }
        };
        subjectSubscriptionManager.onTerminated = subjectSubscriptionManager.onAdded;
        return new TestSubject(subjectSubscriptionManager, subjectSubscriptionManager, testScheduler);
    }

    protected TestSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager, TestScheduler testScheduler) {
        super(onSubscribe);
        this.state = subjectSubscriptionManager;
        this.innerScheduler = testScheduler.createWorker();
    }

    public final void onCompleted() {
        onCompleted(0);
    }

    final void internalOnCompleted() {
        if (this.state.active) {
            for (SubjectObserver onCompleted : this.state.terminate(NotificationLite.completed())) {
                onCompleted.onCompleted();
            }
        }
    }

    public final void onCompleted(long j) {
        this.innerScheduler.schedule(new C21312(), j, TimeUnit.MILLISECONDS);
    }

    public final void onError(Throwable th) {
        onError(th, 0);
    }

    final void internalOnError(Throwable th) {
        if (this.state.active) {
            for (SubjectObserver onError : this.state.terminate(NotificationLite.error(th))) {
                onError.onError(th);
            }
        }
    }

    public final void onError(final Throwable th, long j) {
        this.innerScheduler.schedule(new Action0() {
            public void call() {
                TestSubject.this.internalOnError(th);
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public final void onNext(T t) {
        onNext(t, 0);
    }

    final void internalOnNext(T t) {
        for (Observer onNext : this.state.observers()) {
            onNext.onNext(t);
        }
    }

    public final void onNext(final T t, long j) {
        this.innerScheduler.schedule(new Action0() {
            public void call() {
                TestSubject.this.internalOnNext(t);
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public final boolean hasObservers() {
        return this.state.observers().length > 0;
    }
}
