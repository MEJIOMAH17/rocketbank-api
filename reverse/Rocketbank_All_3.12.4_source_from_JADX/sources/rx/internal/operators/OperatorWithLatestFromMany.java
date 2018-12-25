package rx.internal.operators;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.FuncN;
import rx.observers.SerializedSubscriber;
import rx.plugins.RxJavaHooks;

public final class OperatorWithLatestFromMany<T, R> implements OnSubscribe<R> {
    final FuncN<R> combiner;
    final Observable<T> main;
    final Observable<?>[] others;
    final Iterable<Observable<?>> othersIterable;

    static final class WithLatestMainSubscriber<T, R> extends Subscriber<T> {
        static final Object EMPTY = new Object();
        final Subscriber<? super R> actual;
        final FuncN<R> combiner;
        final AtomicReferenceArray<Object> current;
        boolean done;
        final AtomicInteger ready;

        public WithLatestMainSubscriber(Subscriber<? super R> subscriber, FuncN<R> funcN, int i) {
            this.actual = subscriber;
            this.combiner = funcN;
            subscriber = new AtomicReferenceArray(i + 1);
            for (funcN = null; funcN <= i; funcN++) {
                subscriber.lazySet(funcN, EMPTY);
            }
            this.current = subscriber;
            this.ready = new AtomicInteger(i);
            request(null);
        }

        public final void onNext(T t) {
            if (!this.done) {
                if (this.ready.get() == 0) {
                    AtomicReferenceArray atomicReferenceArray = this.current;
                    int length = atomicReferenceArray.length();
                    int i = 0;
                    atomicReferenceArray.lazySet(0, t);
                    t = new Object[atomicReferenceArray.length()];
                    while (i < length) {
                        t[i] = atomicReferenceArray.get(i);
                        i++;
                    }
                    try {
                        this.actual.onNext(this.combiner.call(t));
                        return;
                    } catch (T t2) {
                        Exceptions.throwIfFatal(t2);
                        onError(t2);
                        return;
                    }
                }
                request(1);
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            unsubscribe();
            this.actual.onError(th);
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                unsubscribe();
                this.actual.onCompleted();
            }
        }

        public final void setProducer(Producer producer) {
            super.setProducer(producer);
            this.actual.setProducer(producer);
        }

        final void innerNext(int i, Object obj) {
            if (this.current.getAndSet(i, obj) == EMPTY) {
                this.ready.decrementAndGet();
            }
        }

        final void innerError(int i, Throwable th) {
            onError(th);
        }

        final void innerComplete(int i) {
            if (this.current.get(i) == EMPTY) {
                onCompleted();
            }
        }
    }

    static final class WithLatestOtherSubscriber extends Subscriber<Object> {
        final int index;
        final WithLatestMainSubscriber<?, ?> parent;

        public WithLatestOtherSubscriber(WithLatestMainSubscriber<?, ?> withLatestMainSubscriber, int i) {
            this.parent = withLatestMainSubscriber;
            this.index = i;
        }

        public final void onNext(Object obj) {
            this.parent.innerNext(this.index, obj);
        }

        public final void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        public final void onCompleted() {
            this.parent.innerComplete(this.index);
        }
    }

    public OperatorWithLatestFromMany(Observable<T> observable, Observable<?>[] observableArr, Iterable<Observable<?>> iterable, FuncN<R> funcN) {
        this.main = observable;
        this.others = observableArr;
        this.othersIterable = iterable;
        this.combiner = funcN;
    }

    public final void call(Subscriber<? super R> subscriber) {
        Object[] objArr;
        int length;
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        int i = 0;
        Observable[] observableArr;
        if (this.others != null) {
            observableArr = this.others;
            objArr = observableArr;
            length = observableArr.length;
        } else {
            observableArr = new Observable[8];
            objArr = observableArr;
            length = 0;
            for (Observable observable : this.othersIterable) {
                if (length == objArr.length) {
                    objArr = (Observable[]) Arrays.copyOf(objArr, (length >> 2) + length);
                }
                int i2 = length + 1;
                objArr[length] = observable;
                length = i2;
            }
        }
        Subscriber withLatestMainSubscriber = new WithLatestMainSubscriber(subscriber, this.combiner, length);
        serializedSubscriber.add(withLatestMainSubscriber);
        while (i < length) {
            if (serializedSubscriber.isUnsubscribed() == null) {
                int i3 = i + 1;
                subscriber = new WithLatestOtherSubscriber(withLatestMainSubscriber, i3);
                withLatestMainSubscriber.add(subscriber);
                objArr[i].unsafeSubscribe(subscriber);
                i = i3;
            } else {
                return;
            }
        }
        this.main.unsafeSubscribe(withLatestMainSubscriber);
    }
}
