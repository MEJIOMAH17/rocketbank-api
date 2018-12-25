package rx;

import rx.annotations.Experimental;

@Experimental
public interface CompletableSubscriber {
    void onCompleted();

    void onError(Throwable th);

    void onSubscribe(Subscription subscription);
}
