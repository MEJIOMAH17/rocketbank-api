package rx.internal.operators;

import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Func1;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;
import rx.subjects.UnicastSubject;
import rx.subscriptions.CompositeSubscription;

public final class OperatorWindowWithStartEndObservable<T, U, V> implements Operator<Observable<T>, T> {
    final Func1<? super U, ? extends Observable<? extends V>> windowClosingSelector;
    final Observable<? extends U> windowOpenings;

    static final class SerializedSubject<T> {
        final Observer<T> consumer;
        final Observable<T> producer;

        public SerializedSubject(Observer<T> observer, Observable<T> observable) {
            this.consumer = new SerializedObserver(observer);
            this.producer = observable;
        }
    }

    final class SourceSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<SerializedSubject<T>> chunks = new LinkedList();
        final CompositeSubscription composite;
        boolean done;
        final Object guard = new Object();

        public SourceSubscriber(Subscriber<? super Observable<T>> subscriber, CompositeSubscription compositeSubscription) {
            this.child = new SerializedSubscriber(subscriber);
            this.composite = compositeSubscription;
        }

        public final void onStart() {
            request(Long.MAX_VALUE);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r4) {
            /*
            r3 = this;
            r0 = r3.guard;
            monitor-enter(r0);
            r1 = r3.done;	 Catch:{ all -> 0x0028 }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x0028 }
            return;
        L_0x0009:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0028 }
            r2 = r3.chunks;	 Catch:{ all -> 0x0028 }
            r1.<init>(r2);	 Catch:{ all -> 0x0028 }
            monitor-exit(r0);	 Catch:{ all -> 0x0028 }
            r0 = r1.iterator();
        L_0x0015:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x0027;
        L_0x001b:
            r1 = r0.next();
            r1 = (rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject) r1;
            r1 = r1.consumer;
            r1.onNext(r4);
            goto L_0x0015;
        L_0x0027:
            return;
        L_0x0028:
            r4 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0028 }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.onNext(java.lang.Object):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onError(java.lang.Throwable r4) {
            /*
            r3 = this;
            r0 = r3.guard;	 Catch:{ all -> 0x0042 }
            monitor-enter(r0);	 Catch:{ all -> 0x0042 }
            r1 = r3.done;	 Catch:{ all -> 0x003f }
            if (r1 == 0) goto L_0x000e;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            r4 = r3.composite;
            r4.unsubscribe();
            return;
        L_0x000e:
            r1 = 1;
            r3.done = r1;	 Catch:{ all -> 0x003f }
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x003f }
            r2 = r3.chunks;	 Catch:{ all -> 0x003f }
            r1.<init>(r2);	 Catch:{ all -> 0x003f }
            r2 = r3.chunks;	 Catch:{ all -> 0x003f }
            r2.clear();	 Catch:{ all -> 0x003f }
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            r0 = r1.iterator();	 Catch:{ all -> 0x0042 }
        L_0x0022:
            r1 = r0.hasNext();	 Catch:{ all -> 0x0042 }
            if (r1 == 0) goto L_0x0034;
        L_0x0028:
            r1 = r0.next();	 Catch:{ all -> 0x0042 }
            r1 = (rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject) r1;	 Catch:{ all -> 0x0042 }
            r1 = r1.consumer;	 Catch:{ all -> 0x0042 }
            r1.onError(r4);	 Catch:{ all -> 0x0042 }
            goto L_0x0022;
        L_0x0034:
            r0 = r3.child;	 Catch:{ all -> 0x0042 }
            r0.onError(r4);	 Catch:{ all -> 0x0042 }
            r4 = r3.composite;
            r4.unsubscribe();
            return;
        L_0x003f:
            r4 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            throw r4;	 Catch:{ all -> 0x0042 }
        L_0x0042:
            r4 = move-exception;
            r0 = r3.composite;
            r0.unsubscribe();
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.onError(java.lang.Throwable):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onCompleted() {
            /*
            r3 = this;
            r0 = r3.guard;	 Catch:{ all -> 0x0042 }
            monitor-enter(r0);	 Catch:{ all -> 0x0042 }
            r1 = r3.done;	 Catch:{ all -> 0x003f }
            if (r1 == 0) goto L_0x000e;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            r0 = r3.composite;
            r0.unsubscribe();
            return;
        L_0x000e:
            r1 = 1;
            r3.done = r1;	 Catch:{ all -> 0x003f }
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x003f }
            r2 = r3.chunks;	 Catch:{ all -> 0x003f }
            r1.<init>(r2);	 Catch:{ all -> 0x003f }
            r2 = r3.chunks;	 Catch:{ all -> 0x003f }
            r2.clear();	 Catch:{ all -> 0x003f }
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            r0 = r1.iterator();	 Catch:{ all -> 0x0042 }
        L_0x0022:
            r1 = r0.hasNext();	 Catch:{ all -> 0x0042 }
            if (r1 == 0) goto L_0x0034;
        L_0x0028:
            r1 = r0.next();	 Catch:{ all -> 0x0042 }
            r1 = (rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject) r1;	 Catch:{ all -> 0x0042 }
            r1 = r1.consumer;	 Catch:{ all -> 0x0042 }
            r1.onCompleted();	 Catch:{ all -> 0x0042 }
            goto L_0x0022;
        L_0x0034:
            r0 = r3.child;	 Catch:{ all -> 0x0042 }
            r0.onCompleted();	 Catch:{ all -> 0x0042 }
            r0 = r3.composite;
            r0.unsubscribe();
            return;
        L_0x003f:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x003f }
            throw r1;	 Catch:{ all -> 0x0042 }
        L_0x0042:
            r0 = move-exception;
            r1 = r3.composite;
            r1.unsubscribe();
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.onCompleted():void");
        }

        final void beginWindow(U u) {
            final SerializedSubject createSerializedSubject = createSerializedSubject();
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.chunks.add(createSerializedSubject);
                this.child.onNext(createSerializedSubject.producer);
                try {
                    Observable observable = (Observable) OperatorWindowWithStartEndObservable.this.windowClosingSelector.call(u);
                    Object c19491 = new Subscriber<V>() {
                        boolean once = true;

                        public void onNext(V v) {
                            onCompleted();
                        }

                        public void onError(Throwable th) {
                            SourceSubscriber.this.onError(th);
                        }

                        public void onCompleted() {
                            if (this.once) {
                                this.once = false;
                                SourceSubscriber.this.endWindow(createSerializedSubject);
                                SourceSubscriber.this.composite.remove(this);
                            }
                        }
                    };
                    this.composite.add(c19491);
                    observable.unsafeSubscribe(c19491);
                } catch (U u2) {
                    onError(u2);
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void endWindow(rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject<T> r4) {
            /*
            r3 = this;
            r0 = r3.guard;
            monitor-enter(r0);
            r1 = r3.done;	 Catch:{ all -> 0x002c }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            return;
        L_0x0009:
            r1 = r3.chunks;	 Catch:{ all -> 0x002c }
            r1 = r1.iterator();	 Catch:{ all -> 0x002c }
        L_0x000f:
            r2 = r1.hasNext();	 Catch:{ all -> 0x002c }
            if (r2 == 0) goto L_0x0022;
        L_0x0015:
            r2 = r1.next();	 Catch:{ all -> 0x002c }
            r2 = (rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject) r2;	 Catch:{ all -> 0x002c }
            if (r2 != r4) goto L_0x000f;
        L_0x001d:
            r2 = 1;
            r1.remove();	 Catch:{ all -> 0x002c }
            goto L_0x0023;
        L_0x0022:
            r2 = 0;
        L_0x0023:
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            if (r2 == 0) goto L_0x002b;
        L_0x0026:
            r4 = r4.consumer;
            r4.onCompleted();
        L_0x002b:
            return;
        L_0x002c:
            r4 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x002c }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.endWindow(rx.internal.operators.OperatorWindowWithStartEndObservable$SerializedSubject):void");
        }

        final SerializedSubject<T> createSerializedSubject() {
            Object create = UnicastSubject.create();
            return new SerializedSubject(create, create);
        }
    }

    public OperatorWindowWithStartEndObservable(Observable<? extends U> observable, Func1<? super U, ? extends Observable<? extends V>> func1) {
        this.windowOpenings = observable;
        this.windowClosingSelector = func1;
    }

    public final Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        CompositeSubscription compositeSubscription = new CompositeSubscription();
        subscriber.add(compositeSubscription);
        final Object sourceSubscriber = new SourceSubscriber(subscriber, compositeSubscription);
        subscriber = new Subscriber<U>() {
            public void onStart() {
                request(Long.MAX_VALUE);
            }

            public void onNext(U u) {
                sourceSubscriber.beginWindow(u);
            }

            public void onError(Throwable th) {
                sourceSubscriber.onError(th);
            }

            public void onCompleted() {
                sourceSubscriber.onCompleted();
            }
        };
        compositeSubscription.add(sourceSubscriber);
        compositeSubscription.add(subscriber);
        this.windowOpenings.unsafeSubscribe(subscriber);
        return sourceSubscriber;
    }
}
