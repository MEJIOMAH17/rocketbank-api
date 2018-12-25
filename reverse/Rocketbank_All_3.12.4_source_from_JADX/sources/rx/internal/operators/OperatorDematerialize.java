package rx.internal.operators;

import rx.Notification;
import rx.Observable.Operator;
import rx.Subscriber;

public final class OperatorDematerialize<T> implements Operator<T, Notification<T>> {

    static final class Holder {
        static final OperatorDematerialize<Object> INSTANCE = new OperatorDematerialize();

        Holder() {
        }
    }

    public static OperatorDematerialize instance() {
        return Holder.INSTANCE;
    }

    OperatorDematerialize() {
    }

    public final Subscriber<? super Notification<T>> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<Notification<T>>(subscriber) {
            boolean terminated;

            public void onNext(Notification<T> notification) {
                switch (notification.getKind()) {
                    case OnNext:
                        if (!this.terminated) {
                            subscriber.onNext(notification.getValue());
                            return;
                        }
                        break;
                    case OnError:
                        onError(notification.getThrowable());
                        return;
                    case OnCompleted:
                        onCompleted();
                        return;
                    default:
                        onError(new IllegalArgumentException("Unsupported notification type: ".concat(String.valueOf(notification))));
                        break;
                }
            }

            public void onError(Throwable th) {
                if (!this.terminated) {
                    this.terminated = true;
                    subscriber.onError(th);
                }
            }

            public void onCompleted() {
                if (!this.terminated) {
                    this.terminated = true;
                    subscriber.onCompleted();
                }
            }
        };
    }
}
