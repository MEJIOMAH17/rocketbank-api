package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorElementAt<T> implements Operator<T, T> {
    final T defaultValue;
    final boolean hasDefault;
    final int index;

    static class InnerProducer extends AtomicBoolean implements Producer {
        private static final long serialVersionUID = 1;
        final Producer actual;

        public InnerProducer(Producer producer) {
            this.actual = producer;
        }

        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            } else if (j > 0 && compareAndSet(0, true) != null) {
                this.actual.request(Long.MAX_VALUE);
            }
        }
    }

    public OperatorElementAt(int i) {
        this(i, null, false);
    }

    public OperatorElementAt(int i, T t) {
        this(i, t, true);
    }

    private OperatorElementAt(int i, T t, boolean z) {
        if (i < 0) {
            z = new StringBuilder();
            z.append(i);
            z.append(" is out of bounds");
            throw new IndexOutOfBoundsException(z.toString());
        }
        this.index = i;
        this.defaultValue = t;
        this.hasDefault = z;
    }

    public final Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        Object c19021 = new Subscriber<T>() {
            private int currentIndex;

            public void onNext(T t) {
                int i = this.currentIndex;
                this.currentIndex = i + 1;
                if (i == OperatorElementAt.this.index) {
                    subscriber.onNext(t);
                    subscriber.onCompleted();
                    unsubscribe();
                }
            }

            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            public void onCompleted() {
                if (this.currentIndex <= OperatorElementAt.this.index) {
                    if (OperatorElementAt.this.hasDefault) {
                        subscriber.onNext(OperatorElementAt.this.defaultValue);
                        subscriber.onCompleted();
                        return;
                    }
                    Subscriber subscriber = subscriber;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(OperatorElementAt.this.index);
                    stringBuilder.append(" is out of bounds");
                    subscriber.onError(new IndexOutOfBoundsException(stringBuilder.toString()));
                }
            }

            public void setProducer(Producer producer) {
                subscriber.setProducer(new InnerProducer(producer));
            }
        };
        subscriber.add(c19021);
        return c19021;
    }
}
