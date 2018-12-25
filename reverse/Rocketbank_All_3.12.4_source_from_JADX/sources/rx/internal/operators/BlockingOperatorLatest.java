package rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import rx.Notification;
import rx.Observable;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class BlockingOperatorLatest {

    static final class LatestObserverIterator<T> extends Subscriber<Notification<? extends T>> implements Iterator<T> {
        Notification<? extends T> iteratorNotification;
        final Semaphore notify = new Semaphore(0);
        final AtomicReference<Notification<? extends T>> value = new AtomicReference();

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
        }

        LatestObserverIterator() {
        }

        public final void onNext(Notification<? extends T> notification) {
            if ((this.value.getAndSet(notification) == null ? true : null) != null) {
                this.notify.release();
            }
        }

        public final boolean hasNext() {
            if (this.iteratorNotification == null || !this.iteratorNotification.isOnError()) {
                if ((this.iteratorNotification == null || !this.iteratorNotification.isOnCompleted()) && this.iteratorNotification == null) {
                    try {
                        this.notify.acquire();
                        this.iteratorNotification = (Notification) this.value.getAndSet(null);
                        if (this.iteratorNotification.isOnError()) {
                            throw Exceptions.propagate(this.iteratorNotification.getThrowable());
                        }
                    } catch (Throwable e) {
                        unsubscribe();
                        Thread.currentThread().interrupt();
                        this.iteratorNotification = Notification.createOnError(e);
                        throw Exceptions.propagate(e);
                    }
                }
                return !this.iteratorNotification.isOnCompleted();
            } else {
                throw Exceptions.propagate(this.iteratorNotification.getThrowable());
            }
        }

        public final T next() {
            if (hasNext() && this.iteratorNotification.isOnNext()) {
                T value = this.iteratorNotification.getValue();
                this.iteratorNotification = null;
                return value;
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    private BlockingOperatorLatest() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterable<T> latest(final Observable<? extends T> observable) {
        return new Iterable<T>() {
            public final Iterator<T> iterator() {
                Subscriber latestObserverIterator = new LatestObserverIterator();
                observable.materialize().subscribe(latestObserverIterator);
                return latestObserverIterator;
            }
        };
    }
}
