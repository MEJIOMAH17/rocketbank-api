package rx.internal.operators;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subjects.Subject;
import rx.subscriptions.Subscriptions;

public final class BufferUntilSubscriber<T> extends Subject<T, T> {
    static final Observer EMPTY_OBSERVER = new C17011();
    private boolean forward;
    final State<T> state;

    static final class State<T> extends AtomicReference<Observer<? super T>> {
        private static final long serialVersionUID = 8026705089538090368L;
        final ConcurrentLinkedQueue<Object> buffer = new ConcurrentLinkedQueue();
        boolean emitting;
        final Object guard = new Object();

        State() {
        }

        final boolean casObserverRef(Observer<? super T> observer, Observer<? super T> observer2) {
            return compareAndSet(observer, observer2);
        }
    }

    /* renamed from: rx.internal.operators.BufferUntilSubscriber$1 */
    static class C17011 implements Observer {
        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(Object obj) {
        }

        C17011() {
        }
    }

    static final class OnSubscribeAction<T> implements OnSubscribe<T> {
        final State<T> state;

        /* renamed from: rx.internal.operators.BufferUntilSubscriber$OnSubscribeAction$1 */
        class C20691 implements Action0 {
            C20691() {
            }

            public void call() {
                OnSubscribeAction.this.state.set(BufferUntilSubscriber.EMPTY_OBSERVER);
            }
        }

        public OnSubscribeAction(State<T> state) {
            this.state = state;
        }

        public final void call(Subscriber<? super T> subscriber) {
            if (this.state.casObserverRef(null, subscriber)) {
                boolean z;
                subscriber.add(Subscriptions.create(new C20691()));
                synchronized (this.state.guard) {
                    z = true;
                    if (this.state.emitting == null) {
                        this.state.emitting = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    while (true) {
                        subscriber = this.state.buffer.poll();
                        if (subscriber != null) {
                            NotificationLite.accept((Observer) this.state.get(), subscriber);
                        } else {
                            synchronized (this.state.guard) {
                                if (this.state.buffer.isEmpty()) {
                                    this.state.emitting = false;
                                    return;
                                }
                            }
                        }
                    }
                }
                return;
            }
            subscriber.onError(new IllegalStateException("Only one subscriber allowed!"));
        }
    }

    public static <T> BufferUntilSubscriber<T> create() {
        return new BufferUntilSubscriber(new State());
    }

    private BufferUntilSubscriber(State<T> state) {
        super(new OnSubscribeAction(state));
        this.state = state;
    }

    private void emit(Object obj) {
        synchronized (this.state.guard) {
            this.state.buffer.add(obj);
            if (this.state.get() != null && this.state.emitting == null) {
                this.forward = true;
                this.state.emitting = true;
            }
        }
        if (this.forward != null) {
            while (true) {
                obj = this.state.buffer.poll();
                if (obj != null) {
                    NotificationLite.accept((Observer) this.state.get(), obj);
                } else {
                    return;
                }
            }
        }
    }

    public final void onCompleted() {
        if (this.forward) {
            ((Observer) this.state.get()).onCompleted();
        } else {
            emit(NotificationLite.completed());
        }
    }

    public final void onError(Throwable th) {
        if (this.forward) {
            ((Observer) this.state.get()).onError(th);
        } else {
            emit(NotificationLite.error(th));
        }
    }

    public final void onNext(T t) {
        if (this.forward) {
            ((Observer) this.state.get()).onNext(t);
        } else {
            emit(NotificationLite.next(t));
        }
    }

    public final boolean hasObservers() {
        boolean z;
        synchronized (this.state.guard) {
            z = this.state.get() != null;
        }
        return z;
    }
}
