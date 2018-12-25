package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.functions.Functions;
import rx.internal.util.RxRingBuffer;
import rx.subscriptions.CompositeSubscription;

public final class OperatorZip<R> implements Operator<R, Observable<?>[]> {
    final FuncN<? extends R> zipFunction;

    static final class Zip<R> extends AtomicLong {
        static final int THRESHOLD = ((int) (((double) RxRingBuffer.SIZE) * 0.7d));
        private static final long serialVersionUID = 5995274816189928317L;
        final Observer<? super R> child;
        private final CompositeSubscription childSubscription = new CompositeSubscription();
        int emitted;
        private AtomicLong requested;
        private volatile Object[] subscribers;
        private final FuncN<? extends R> zipFunction;

        final class InnerSubscriber extends Subscriber {
            final RxRingBuffer items = RxRingBuffer.getSpmcInstance();

            InnerSubscriber() {
            }

            public final void onStart() {
                request((long) RxRingBuffer.SIZE);
            }

            public final void requestMore(long j) {
                request(j);
            }

            public final void onCompleted() {
                this.items.onCompleted();
                Zip.this.tick();
            }

            public final void onError(Throwable th) {
                Zip.this.child.onError(th);
            }

            public final void onNext(Object obj) {
                try {
                    this.items.onNext(obj);
                } catch (Object obj2) {
                    onError(obj2);
                }
                Zip.this.tick();
            }
        }

        public Zip(Subscriber<? super R> subscriber, FuncN<? extends R> funcN) {
            this.child = subscriber;
            this.zipFunction = funcN;
            subscriber.add(this.childSubscription);
        }

        public final void start(Observable[] observableArr, AtomicLong atomicLong) {
            int i = 0;
            Object[] objArr = new Object[observableArr.length];
            for (int i2 = 0; i2 < observableArr.length; i2++) {
                Subscription innerSubscriber = new InnerSubscriber();
                objArr[i2] = innerSubscriber;
                this.childSubscription.add(innerSubscriber);
            }
            this.requested = atomicLong;
            this.subscribers = objArr;
            while (i < observableArr.length) {
                observableArr[i].unsafeSubscribe((InnerSubscriber) objArr[i]);
                i++;
            }
        }

        final void tick() {
            Object[] objArr = this.subscribers;
            if (objArr != null && getAndIncrement() == 0) {
                int length = objArr.length;
                Observer observer = this.child;
                AtomicLong atomicLong = this.requested;
                while (true) {
                    Object obj = new Object[length];
                    int i = 1;
                    for (int i2 = 0; i2 < length; i2++) {
                        RxRingBuffer rxRingBuffer = ((InnerSubscriber) objArr[i2]).items;
                        Object peek = rxRingBuffer.peek();
                        if (peek == null) {
                            i = 0;
                        } else if (rxRingBuffer.isCompleted(peek)) {
                            observer.onCompleted();
                            this.childSubscription.unsubscribe();
                            return;
                        } else {
                            obj[i2] = rxRingBuffer.getValue(peek);
                        }
                    }
                    if (i != 0 && atomicLong.get() > 0) {
                        try {
                            observer.onNext(this.zipFunction.call(obj));
                            atomicLong.decrementAndGet();
                            this.emitted++;
                            for (Object obj2 : objArr) {
                                RxRingBuffer rxRingBuffer2 = ((InnerSubscriber) obj2).items;
                                rxRingBuffer2.poll();
                                if (rxRingBuffer2.isCompleted(rxRingBuffer2.peek())) {
                                    observer.onCompleted();
                                    this.childSubscription.unsubscribe();
                                    return;
                                }
                            }
                            if (this.emitted > THRESHOLD) {
                                for (Object obj22 : objArr) {
                                    ((InnerSubscriber) obj22).requestMore((long) this.emitted);
                                }
                                this.emitted = 0;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, observer, obj);
                            return;
                        }
                    } else if (decrementAndGet() <= 0) {
                        break;
                    }
                }
            }
        }
    }

    static final class ZipProducer<R> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1216676403723546796L;
        final Zip<R> zipper;

        public ZipProducer(Zip<R> zip) {
            this.zipper = zip;
        }

        public final void request(long j) {
            BackpressureUtils.getAndAddRequest(this, j);
            this.zipper.tick();
        }
    }

    final class ZipSubscriber extends Subscriber<Observable[]> {
        final Subscriber<? super R> child;
        final ZipProducer<R> producer;
        boolean started;
        final Zip<R> zipper;

        public ZipSubscriber(Subscriber<? super R> subscriber, Zip<R> zip, ZipProducer<R> zipProducer) {
            this.child = subscriber;
            this.zipper = zip;
            this.producer = zipProducer;
        }

        public final void onCompleted() {
            if (!this.started) {
                this.child.onCompleted();
            }
        }

        public final void onError(Throwable th) {
            this.child.onError(th);
        }

        public final void onNext(Observable[] observableArr) {
            if (observableArr != null) {
                if (observableArr.length != 0) {
                    this.started = true;
                    this.zipper.start(observableArr, this.producer);
                    return;
                }
            }
            this.child.onCompleted();
        }
    }

    public OperatorZip(FuncN<? extends R> funcN) {
        this.zipFunction = funcN;
    }

    public OperatorZip(Func2 func2) {
        this.zipFunction = Functions.fromFunc(func2);
    }

    public OperatorZip(Func3 func3) {
        this.zipFunction = Functions.fromFunc(func3);
    }

    public OperatorZip(Func4 func4) {
        this.zipFunction = Functions.fromFunc(func4);
    }

    public OperatorZip(Func5 func5) {
        this.zipFunction = Functions.fromFunc(func5);
    }

    public OperatorZip(Func6 func6) {
        this.zipFunction = Functions.fromFunc(func6);
    }

    public OperatorZip(Func7 func7) {
        this.zipFunction = Functions.fromFunc(func7);
    }

    public OperatorZip(Func8 func8) {
        this.zipFunction = Functions.fromFunc(func8);
    }

    public OperatorZip(Func9 func9) {
        this.zipFunction = Functions.fromFunc(func9);
    }

    public final Subscriber<? super Observable[]> call(Subscriber<? super R> subscriber) {
        Zip zip = new Zip(subscriber, this.zipFunction);
        Producer zipProducer = new ZipProducer(zip);
        Object zipSubscriber = new ZipSubscriber(subscriber, zip, zipProducer);
        subscriber.add(zipSubscriber);
        subscriber.setProducer(zipProducer);
        return zipSubscriber;
    }
}
