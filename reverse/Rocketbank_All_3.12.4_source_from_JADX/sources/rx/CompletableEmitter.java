package rx;

import rx.annotations.Experimental;
import rx.functions.Cancellable;

@Experimental
public interface CompletableEmitter {
    void onCompleted();

    void onError(Throwable th);

    void setCancellation(Cancellable cancellable);

    void setSubscription(Subscription subscription);
}
