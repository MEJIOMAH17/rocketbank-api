package rx.internal.operators;

import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.internal.producers.SingleDelayedProducer;
import rx.plugins.RxJavaHooks;

public final class OperatorAll<T> implements Operator<Boolean, T> {
    final Func1<? super T, Boolean> predicate;

    public OperatorAll(Func1<? super T, Boolean> func1) {
        this.predicate = func1;
    }

    public final Subscriber<? super T> call(final Subscriber<? super Boolean> subscriber) {
        final Producer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Object c18861 = new Subscriber<T>() {
            boolean done;

            public void onNext(T t) {
                if (!this.done) {
                    try {
                        if (((Boolean) OperatorAll.this.predicate.call(t)).booleanValue() == null) {
                            this.done = true;
                            singleDelayedProducer.setValue(Boolean.FALSE);
                            unsubscribe();
                        }
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, (Observer) this, (Object) t);
                    }
                }
            }

            public void onError(Throwable th) {
                if (this.done) {
                    RxJavaHooks.onError(th);
                    return;
                }
                this.done = true;
                subscriber.onError(th);
            }

            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    singleDelayedProducer.setValue(Boolean.TRUE);
                }
            }
        };
        subscriber.add(c18861);
        subscriber.setProducer(singleDelayedProducer);
        return c18861;
    }
}
