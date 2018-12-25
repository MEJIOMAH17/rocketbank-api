package rx.android;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;

public abstract class MainThreadSubscription implements Subscription {
    private final AtomicBoolean unsubscribed = new AtomicBoolean();

    /* renamed from: rx.android.MainThreadSubscription$1 */
    class C20681 implements Action0 {
        C20681() {
        }

        public void call() {
            MainThreadSubscription.this.onUnsubscribe();
        }
    }

    protected abstract void onUnsubscribe();

    public static void verifyMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            StringBuilder stringBuilder = new StringBuilder("Expected to be called on the main thread but was ");
            stringBuilder.append(Thread.currentThread().getName());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public final boolean isUnsubscribed() {
        return this.unsubscribed.get();
    }

    public final void unsubscribe() {
        if (this.unsubscribed.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                onUnsubscribe();
                return;
            }
            AndroidSchedulers.mainThread().createWorker().schedule(new C20681());
        }
    }
}
