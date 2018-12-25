package rx.internal.operators;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.internal.producers.SingleDelayedProducer;

public final class OperatorToObservableList<T> implements Operator<List<T>, T> {

    static final class Holder {
        static final OperatorToObservableList<Object> INSTANCE = new OperatorToObservableList();

        Holder() {
        }
    }

    public static <T> OperatorToObservableList<T> instance() {
        return Holder.INSTANCE;
    }

    OperatorToObservableList() {
    }

    public final Subscriber<? super T> call(final Subscriber<? super List<T>> subscriber) {
        final Producer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Object c19451 = new Subscriber<T>() {
            boolean completed;
            List<T> list = new LinkedList();

            public void onStart() {
                request(Long.MAX_VALUE);
            }

            public void onCompleted() {
                if (!this.completed) {
                    this.completed = true;
                    try {
                        ArrayList arrayList = new ArrayList(this.list);
                        this.list = null;
                        singleDelayedProducer.setValue(arrayList);
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, (Observer) this);
                    }
                }
            }

            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            public void onNext(T t) {
                if (!this.completed) {
                    this.list.add(t);
                }
            }
        };
        subscriber.add(c19451);
        subscriber.setProducer(singleDelayedProducer);
        return c19451;
    }
}
