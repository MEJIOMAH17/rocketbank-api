package rx;

import rx.internal.util.SubscriptionList;

public abstract class Subscriber<T> implements Observer<T>, Subscription {
    private static final long NOT_SET = Long.MIN_VALUE;
    private Producer producer;
    private long requested;
    private final Subscriber<?> subscriber;
    private final SubscriptionList subscriptions;

    public void onStart() {
    }

    protected Subscriber() {
        this(null, false);
    }

    protected Subscriber(Subscriber<?> subscriber) {
        this(subscriber, true);
    }

    protected Subscriber(Subscriber<?> subscriber, boolean z) {
        this.requested = NOT_SET;
        this.subscriber = subscriber;
        subscriber = (!z || subscriber == null) ? new SubscriptionList() : subscriber.subscriptions;
        this.subscriptions = subscriber;
    }

    public final void add(Subscription subscription) {
        this.subscriptions.add(subscription);
    }

    public final void unsubscribe() {
        this.subscriptions.unsubscribe();
    }

    public final boolean isUnsubscribed() {
        return this.subscriptions.isUnsubscribed();
    }

    protected final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("number requested cannot be negative: ".concat(String.valueOf(j)));
        }
        synchronized (this) {
            if (this.producer != null) {
                Producer producer = this.producer;
                producer.request(j);
                return;
            }
            addToRequested(j);
        }
    }

    private void addToRequested(long j) {
        if (this.requested == NOT_SET) {
            this.requested = j;
            return;
        }
        long j2 = this.requested + j;
        if (j2 < 0) {
            this.requested = Long.MAX_VALUE;
        } else {
            this.requested = j2;
        }
    }

    public void setProducer(Producer producer) {
        synchronized (this) {
            long j = this.requested;
            this.producer = producer;
            producer = (this.subscriber == null || j != NOT_SET) ? null : true;
        }
        if (producer != null) {
            this.subscriber.setProducer(this.producer);
        } else if (j == NOT_SET) {
            this.producer.request(Long.MAX_VALUE);
        } else {
            this.producer.request(j);
        }
    }
}
