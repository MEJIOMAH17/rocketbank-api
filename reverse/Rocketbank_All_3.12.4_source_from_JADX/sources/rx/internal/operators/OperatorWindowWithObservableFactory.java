package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Func0;
import rx.observers.SerializedSubscriber;
import rx.subjects.UnicastSubject;
import rx.subscriptions.SerialSubscription;

public final class OperatorWindowWithObservableFactory<T, U> implements Operator<Observable<T>, T> {
    static final Object NEXT_SUBJECT = new Object();
    final Func0<? extends Observable<? extends U>> otherFactory;

    static final class BoundarySubscriber<T, U> extends Subscriber<U> {
        boolean done;
        final SourceSubscriber<T, U> sub;

        public BoundarySubscriber(SourceSubscriber<T, U> sourceSubscriber) {
            this.sub = sourceSubscriber;
        }

        public final void onStart() {
            request(Long.MAX_VALUE);
        }

        public final void onNext(U u) {
            if (this.done == null) {
                this.done = true;
                this.sub.replaceWindow();
            }
        }

        public final void onError(Throwable th) {
            this.sub.onError(th);
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                this.sub.onCompleted();
            }
        }
    }

    static final class SourceSubscriber<T, U> extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        Observer<T> consumer;
        boolean emitting;
        final Object guard = new Object();
        final Func0<? extends Observable<? extends U>> otherFactory;
        Observable<T> producer;
        List<Object> queue;
        final SerialSubscription serial = new SerialSubscription();

        public SourceSubscriber(Subscriber<? super Observable<T>> subscriber, Func0<? extends Observable<? extends U>> func0) {
            this.child = new SerializedSubscriber(subscriber);
            this.otherFactory = func0;
            add(this.serial);
        }

        public final void onStart() {
            request(Long.MAX_VALUE);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r7) {
            /*
            r6 = this;
            r0 = r6.guard;
            monitor-enter(r0);
            r1 = r6.emitting;	 Catch:{ all -> 0x0066 }
            if (r1 == 0) goto L_0x0019;
        L_0x0007:
            r1 = r6.queue;	 Catch:{ all -> 0x0066 }
            if (r1 != 0) goto L_0x0012;
        L_0x000b:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0066 }
            r1.<init>();	 Catch:{ all -> 0x0066 }
            r6.queue = r1;	 Catch:{ all -> 0x0066 }
        L_0x0012:
            r1 = r6.queue;	 Catch:{ all -> 0x0066 }
            r1.add(r7);	 Catch:{ all -> 0x0066 }
            monitor-exit(r0);	 Catch:{ all -> 0x0066 }
            return;
        L_0x0019:
            r1 = r6.queue;	 Catch:{ all -> 0x0066 }
            r2 = 0;
            r6.queue = r2;	 Catch:{ all -> 0x0066 }
            r3 = 1;
            r6.emitting = r3;	 Catch:{ all -> 0x0066 }
            monitor-exit(r0);	 Catch:{ all -> 0x0066 }
            r0 = r3;
        L_0x0023:
            r4 = 0;
            r6.drain(r1);	 Catch:{ all -> 0x0057 }
            if (r0 == 0) goto L_0x002d;
        L_0x0029:
            r6.emitValue(r7);	 Catch:{ all -> 0x0057 }
            r0 = r4;
        L_0x002d:
            r1 = r6.guard;	 Catch:{ all -> 0x0057 }
            monitor-enter(r1);	 Catch:{ all -> 0x0057 }
            r5 = r6.queue;	 Catch:{ all -> 0x004f }
            r6.queue = r2;	 Catch:{ all -> 0x004f }
            if (r5 != 0) goto L_0x003a;
        L_0x0036:
            r6.emitting = r4;	 Catch:{ all -> 0x004f }
            monitor-exit(r1);	 Catch:{ all -> 0x0055 }
            return;
        L_0x003a:
            monitor-exit(r1);	 Catch:{ all -> 0x004f }
            r1 = r6.child;	 Catch:{ all -> 0x0057 }
            r1 = r1.isUnsubscribed();	 Catch:{ all -> 0x0057 }
            if (r1 == 0) goto L_0x004d;
        L_0x0043:
            r1 = r6.guard;
            monitor-enter(r1);
            r6.emitting = r4;	 Catch:{ all -> 0x004a }
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            return;
        L_0x004a:
            r7 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            throw r7;
        L_0x004d:
            r1 = r5;
            goto L_0x0023;
        L_0x004f:
            r7 = move-exception;
            r3 = r4;
        L_0x0051:
            monitor-exit(r1);	 Catch:{ all -> 0x0055 }
            throw r7;	 Catch:{ all -> 0x0053 }
        L_0x0053:
            r7 = move-exception;
            goto L_0x0059;
        L_0x0055:
            r7 = move-exception;
            goto L_0x0051;
        L_0x0057:
            r7 = move-exception;
            r3 = r4;
        L_0x0059:
            if (r3 != 0) goto L_0x0065;
        L_0x005b:
            r0 = r6.guard;
            monitor-enter(r0);
            r6.emitting = r4;	 Catch:{ all -> 0x0062 }
            monitor-exit(r0);	 Catch:{ all -> 0x0062 }
            goto L_0x0065;
        L_0x0062:
            r7 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0062 }
            throw r7;
        L_0x0065:
            throw r7;
        L_0x0066:
            r7 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0066 }
            throw r7;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithObservableFactory.SourceSubscriber.onNext(java.lang.Object):void");
        }

        final void drain(List<Object> list) {
            if (list != null) {
                for (Object next : list) {
                    if (next == OperatorWindowWithObservableFactory.NEXT_SUBJECT) {
                        replaceSubject();
                    } else if (NotificationLite.isError(next)) {
                        error(NotificationLite.getError(next));
                        return;
                    } else if (NotificationLite.isCompleted(next)) {
                        complete();
                        return;
                    } else {
                        emitValue(next);
                    }
                }
            }
        }

        final void replaceSubject() {
            Observer observer = this.consumer;
            if (observer != null) {
                observer.onCompleted();
            }
            createNewWindow();
            this.child.onNext(this.producer);
        }

        final void createNewWindow() {
            Object create = UnicastSubject.create();
            this.consumer = create;
            this.producer = create;
            try {
                Observable observable = (Observable) this.otherFactory.call();
                Object boundarySubscriber = new BoundarySubscriber(this);
                this.serial.set(boundarySubscriber);
                observable.unsafeSubscribe(boundarySubscriber);
            } catch (Throwable th) {
                this.child.onError(th);
                unsubscribe();
            }
        }

        final void emitValue(T t) {
            Observer observer = this.consumer;
            if (observer != null) {
                observer.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            synchronized (this.guard) {
                if (this.emitting) {
                    this.queue = Collections.singletonList(NotificationLite.error(th));
                    return;
                }
                this.queue = null;
                this.emitting = true;
                error(th);
            }
        }

        public final void onCompleted() {
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(NotificationLite.completed());
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                try {
                    drain(list);
                    complete();
                } catch (Throwable th) {
                    error(th);
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void replaceWindow() {
            /*
            r6 = this;
            r0 = r6.guard;
            monitor-enter(r0);
            r1 = r6.emitting;	 Catch:{ all -> 0x0068 }
            if (r1 == 0) goto L_0x001b;
        L_0x0007:
            r1 = r6.queue;	 Catch:{ all -> 0x0068 }
            if (r1 != 0) goto L_0x0012;
        L_0x000b:
            r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0068 }
            r1.<init>();	 Catch:{ all -> 0x0068 }
            r6.queue = r1;	 Catch:{ all -> 0x0068 }
        L_0x0012:
            r1 = r6.queue;	 Catch:{ all -> 0x0068 }
            r2 = rx.internal.operators.OperatorWindowWithObservableFactory.NEXT_SUBJECT;	 Catch:{ all -> 0x0068 }
            r1.add(r2);	 Catch:{ all -> 0x0068 }
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            return;
        L_0x001b:
            r1 = r6.queue;	 Catch:{ all -> 0x0068 }
            r2 = 0;
            r6.queue = r2;	 Catch:{ all -> 0x0068 }
            r3 = 1;
            r6.emitting = r3;	 Catch:{ all -> 0x0068 }
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            r0 = r3;
        L_0x0025:
            r4 = 0;
            r6.drain(r1);	 Catch:{ all -> 0x0059 }
            if (r0 == 0) goto L_0x002f;
        L_0x002b:
            r6.replaceSubject();	 Catch:{ all -> 0x0059 }
            r0 = r4;
        L_0x002f:
            r1 = r6.guard;	 Catch:{ all -> 0x0059 }
            monitor-enter(r1);	 Catch:{ all -> 0x0059 }
            r5 = r6.queue;	 Catch:{ all -> 0x0051 }
            r6.queue = r2;	 Catch:{ all -> 0x0051 }
            if (r5 != 0) goto L_0x003c;
        L_0x0038:
            r6.emitting = r4;	 Catch:{ all -> 0x0051 }
            monitor-exit(r1);	 Catch:{ all -> 0x0057 }
            return;
        L_0x003c:
            monitor-exit(r1);	 Catch:{ all -> 0x0051 }
            r1 = r6.child;	 Catch:{ all -> 0x0059 }
            r1 = r1.isUnsubscribed();	 Catch:{ all -> 0x0059 }
            if (r1 == 0) goto L_0x004f;
        L_0x0045:
            r1 = r6.guard;
            monitor-enter(r1);
            r6.emitting = r4;	 Catch:{ all -> 0x004c }
            monitor-exit(r1);	 Catch:{ all -> 0x004c }
            return;
        L_0x004c:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x004c }
            throw r0;
        L_0x004f:
            r1 = r5;
            goto L_0x0025;
        L_0x0051:
            r0 = move-exception;
            r3 = r4;
        L_0x0053:
            monitor-exit(r1);	 Catch:{ all -> 0x0057 }
            throw r0;	 Catch:{ all -> 0x0055 }
        L_0x0055:
            r0 = move-exception;
            goto L_0x005b;
        L_0x0057:
            r0 = move-exception;
            goto L_0x0053;
        L_0x0059:
            r0 = move-exception;
            r3 = r4;
        L_0x005b:
            if (r3 != 0) goto L_0x0067;
        L_0x005d:
            r1 = r6.guard;
            monitor-enter(r1);
            r6.emitting = r4;	 Catch:{ all -> 0x0064 }
            monitor-exit(r1);	 Catch:{ all -> 0x0064 }
            goto L_0x0067;
        L_0x0064:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0064 }
            throw r0;
        L_0x0067:
            throw r0;
        L_0x0068:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithObservableFactory.SourceSubscriber.replaceWindow():void");
        }

        final void complete() {
            Observer observer = this.consumer;
            this.consumer = null;
            this.producer = null;
            if (observer != null) {
                observer.onCompleted();
            }
            this.child.onCompleted();
            unsubscribe();
        }

        final void error(Throwable th) {
            Observer observer = this.consumer;
            this.consumer = null;
            this.producer = null;
            if (observer != null) {
                observer.onError(th);
            }
            this.child.onError(th);
            unsubscribe();
        }
    }

    public OperatorWindowWithObservableFactory(Func0<? extends Observable<? extends U>> func0) {
        this.otherFactory = func0;
    }

    public final Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        Subscriber<? super T> sourceSubscriber = new SourceSubscriber(subscriber, this.otherFactory);
        subscriber.add(sourceSubscriber);
        sourceSubscriber.replaceWindow();
        return sourceSubscriber;
    }
}
