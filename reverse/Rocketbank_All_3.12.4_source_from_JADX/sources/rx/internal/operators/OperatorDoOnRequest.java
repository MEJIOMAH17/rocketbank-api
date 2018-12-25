package rx.internal.operators;

import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action1;

public class OperatorDoOnRequest<T> implements Operator<T, T> {
    final Action1<? super Long> request;

    static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super T> child;

        ParentSubscriber(Subscriber<? super T> subscriber) {
            this.child = subscriber;
            request(0);
        }

        private void requestMore(long j) {
            request(j);
        }

        public final void onCompleted() {
            this.child.onCompleted();
        }

        public final void onError(Throwable th) {
            this.child.onError(th);
        }

        public final void onNext(T t) {
            this.child.onNext(t);
        }
    }

    public OperatorDoOnRequest(Action1<? super Long> action1) {
        this.request = action1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final Object parentSubscriber = new ParentSubscriber(subscriber);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                OperatorDoOnRequest.this.request.call(Long.valueOf(j));
                parentSubscriber.requestMore(j);
            }
        });
        subscriber.add(parentSubscriber);
        return parentSubscriber;
    }
}
