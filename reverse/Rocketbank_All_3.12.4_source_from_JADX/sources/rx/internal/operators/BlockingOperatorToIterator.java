package rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import rx.Notification;
import rx.Observable;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.internal.util.RxRingBuffer;

public final class BlockingOperatorToIterator {

    public static final class SubscriberIterator<T> extends Subscriber<Notification<? extends T>> implements Iterator<T> {
        static final int LIMIT = ((3 * RxRingBuffer.SIZE) / 4);
        private Notification<? extends T> buf;
        private final BlockingQueue<Notification<? extends T>> notifications = new LinkedBlockingQueue();
        private int received;

        public final void onCompleted() {
        }

        public final void onStart() {
            request((long) RxRingBuffer.SIZE);
        }

        public final void onError(Throwable th) {
            this.notifications.offer(Notification.createOnError(th));
        }

        public final void onNext(Notification<? extends T> notification) {
            this.notifications.offer(notification);
        }

        public final boolean hasNext() {
            if (this.buf == null) {
                this.buf = take();
                this.received++;
                if (this.received >= LIMIT) {
                    request((long) this.received);
                    this.received = 0;
                }
            }
            if (!this.buf.isOnError()) {
                return !this.buf.isOnCompleted();
            } else {
                throw Exceptions.propagate(this.buf.getThrowable());
            }
        }

        public final T next() {
            if (hasNext()) {
                T value = this.buf.getValue();
                this.buf = null;
                return value;
            }
            throw new NoSuchElementException();
        }

        private Notification<? extends T> take() {
            try {
                Notification<? extends T> notification = (Notification) this.notifications.poll();
                if (notification != null) {
                    return notification;
                }
                return (Notification) this.notifications.take();
            } catch (Throwable e) {
                unsubscribe();
                throw Exceptions.propagate(e);
            }
        }

        public final void remove() {
            throw new UnsupportedOperationException("Read-only iterator");
        }
    }

    private BlockingOperatorToIterator() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterator<T> toIterator(Observable<? extends T> observable) {
        Subscriber subscriberIterator = new SubscriberIterator();
        observable.materialize().subscribe(subscriberIterator);
        return subscriberIterator;
    }
}
