package rx.internal.operators;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;

public final class OperatorBufferWithStartEndObservable<T, TOpening, TClosing> implements Operator<List<T>, T> {
    final Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosing;
    final Observable<? extends TOpening> bufferOpening;

    final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks = new LinkedList();
        final CompositeSubscription closingSubscriptions = new CompositeSubscription();
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> subscriber) {
            this.child = subscriber;
            add(this.closingSubscriptions);
        }

        public final void onNext(T t) {
            synchronized (this) {
                for (List add : this.chunks) {
                    add.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunks.clear();
                this.child.onError(th);
                unsubscribe();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onCompleted() {
            /*
            r3 = this;
            monitor-enter(r3);	 Catch:{ Throwable -> 0x0039 }
            r0 = r3.done;	 Catch:{ all -> 0x0036 }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            return;
        L_0x0007:
            r0 = 1;
            r3.done = r0;	 Catch:{ all -> 0x0036 }
            r0 = new java.util.LinkedList;	 Catch:{ all -> 0x0036 }
            r1 = r3.chunks;	 Catch:{ all -> 0x0036 }
            r0.<init>(r1);	 Catch:{ all -> 0x0036 }
            r1 = r3.chunks;	 Catch:{ all -> 0x0036 }
            r1.clear();	 Catch:{ all -> 0x0036 }
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            r0 = r0.iterator();	 Catch:{ Throwable -> 0x0039 }
        L_0x001b:
            r1 = r0.hasNext();	 Catch:{ Throwable -> 0x0039 }
            if (r1 == 0) goto L_0x002d;
        L_0x0021:
            r1 = r0.next();	 Catch:{ Throwable -> 0x0039 }
            r1 = (java.util.List) r1;	 Catch:{ Throwable -> 0x0039 }
            r2 = r3.child;	 Catch:{ Throwable -> 0x0039 }
            r2.onNext(r1);	 Catch:{ Throwable -> 0x0039 }
            goto L_0x001b;
        L_0x002d:
            r0 = r3.child;
            r0.onCompleted();
            r3.unsubscribe();
            return;
        L_0x0036:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            throw r0;	 Catch:{ Throwable -> 0x0039 }
        L_0x0039:
            r0 = move-exception;
            r1 = r3.child;
            rx.exceptions.Exceptions.throwOrReport(r0, r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithStartEndObservable.BufferingSubscriber.onCompleted():void");
        }

        final void startBuffer(TOpening tOpening) {
            final List arrayList = new ArrayList();
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunks.add(arrayList);
                try {
                    Observable observable = (Observable) OperatorBufferWithStartEndObservable.this.bufferClosing.call(tOpening);
                    Object c18911 = new Subscriber<TClosing>() {
                        public void onNext(TClosing tClosing) {
                            BufferingSubscriber.this.closingSubscriptions.remove(this);
                            BufferingSubscriber.this.endBuffer(arrayList);
                        }

                        public void onError(Throwable th) {
                            BufferingSubscriber.this.onError(th);
                        }

                        public void onCompleted() {
                            BufferingSubscriber.this.closingSubscriptions.remove(this);
                            BufferingSubscriber.this.endBuffer(arrayList);
                        }
                    };
                    this.closingSubscriptions.add(c18911);
                    observable.unsafeSubscribe(c18911);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) this);
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void endBuffer(java.util.List<T> r3) {
            /*
            r2 = this;
            monitor-enter(r2);
            r0 = r2.done;	 Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r2);	 Catch:{ all -> 0x002a }
            return;
        L_0x0007:
            r0 = r2.chunks;	 Catch:{ all -> 0x002a }
            r0 = r0.iterator();	 Catch:{ all -> 0x002a }
        L_0x000d:
            r1 = r0.hasNext();	 Catch:{ all -> 0x002a }
            if (r1 == 0) goto L_0x0020;
        L_0x0013:
            r1 = r0.next();	 Catch:{ all -> 0x002a }
            r1 = (java.util.List) r1;	 Catch:{ all -> 0x002a }
            if (r1 != r3) goto L_0x000d;
        L_0x001b:
            r1 = 1;
            r0.remove();	 Catch:{ all -> 0x002a }
            goto L_0x0021;
        L_0x0020:
            r1 = 0;
        L_0x0021:
            monitor-exit(r2);	 Catch:{ all -> 0x002a }
            if (r1 == 0) goto L_0x0029;
        L_0x0024:
            r0 = r2.child;
            r0.onNext(r3);
        L_0x0029:
            return;
        L_0x002a:
            r3 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x002a }
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithStartEndObservable.BufferingSubscriber.endBuffer(java.util.List):void");
        }
    }

    public OperatorBufferWithStartEndObservable(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        this.bufferOpening = observable;
        this.bufferClosing = func1;
    }

    public final Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        final Object bufferingSubscriber = new BufferingSubscriber(new SerializedSubscriber(subscriber));
        Object c18901 = new Subscriber<TOpening>() {
            public void onNext(TOpening tOpening) {
                bufferingSubscriber.startBuffer(tOpening);
            }

            public void onError(Throwable th) {
                bufferingSubscriber.onError(th);
            }

            public void onCompleted() {
                bufferingSubscriber.onCompleted();
            }
        };
        subscriber.add(c18901);
        subscriber.add(bufferingSubscriber);
        this.bufferOpening.unsafeSubscribe(c18901);
        return bufferingSubscriber;
    }
}
