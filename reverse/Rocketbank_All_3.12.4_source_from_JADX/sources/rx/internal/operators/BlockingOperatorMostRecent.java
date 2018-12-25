package rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import rx.Observable;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class BlockingOperatorMostRecent {

    static final class MostRecentObserver<T> extends Subscriber<T> {
        volatile Object value;

        /* renamed from: rx.internal.operators.BlockingOperatorMostRecent$MostRecentObserver$1 */
        class C16481 implements Iterator<T> {
            private Object buf;

            C16481() {
            }

            public boolean hasNext() {
                this.buf = MostRecentObserver.this.value;
                return !NotificationLite.isCompleted(this.buf);
            }

            public T next() {
                try {
                    if (this.buf == null) {
                        Object obj = MostRecentObserver.this.value;
                    }
                    if (NotificationLite.isCompleted(this.buf)) {
                        throw new NoSuchElementException();
                    } else if (NotificationLite.isError(this.buf)) {
                        throw Exceptions.propagate(NotificationLite.getError(this.buf));
                    } else {
                        T value = NotificationLite.getValue(this.buf);
                        this.buf = null;
                        return value;
                    }
                } finally {
                    this.buf = null;
                }
            }

            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        MostRecentObserver(T t) {
            this.value = NotificationLite.next(t);
        }

        public final void onCompleted() {
            this.value = NotificationLite.completed();
        }

        public final void onError(Throwable th) {
            this.value = NotificationLite.error(th);
        }

        public final void onNext(T t) {
            this.value = NotificationLite.next(t);
        }

        public final Iterator<T> getIterable() {
            return new C16481();
        }
    }

    private BlockingOperatorMostRecent() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterable<T> mostRecent(final Observable<? extends T> observable, final T t) {
        return new Iterable<T>() {
            public final Iterator<T> iterator() {
                Subscriber mostRecentObserver = new MostRecentObserver(t);
                observable.subscribe(mostRecentObserver);
                return mostRecentObserver.getIterable();
            }
        };
    }
}
