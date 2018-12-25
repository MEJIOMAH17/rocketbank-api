package rx.android.schedulers;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;
import rx.Scheduler;
import rx.android.plugins.RxAndroidPlugins;
import rx.annotations.Experimental;

public final class AndroidSchedulers {
    private static final AtomicReference<AndroidSchedulers> INSTANCE = new AtomicReference();
    private final Scheduler mainThreadScheduler;

    private static AndroidSchedulers getInstance() {
        AndroidSchedulers androidSchedulers;
        do {
            androidSchedulers = (AndroidSchedulers) INSTANCE.get();
            if (androidSchedulers != null) {
                return androidSchedulers;
            }
            androidSchedulers = new AndroidSchedulers();
        } while (!INSTANCE.compareAndSet(null, androidSchedulers));
        return androidSchedulers;
    }

    private AndroidSchedulers() {
        Scheduler mainThreadScheduler = RxAndroidPlugins.getInstance().getSchedulersHook().getMainThreadScheduler();
        if (mainThreadScheduler != null) {
            this.mainThreadScheduler = mainThreadScheduler;
        } else {
            this.mainThreadScheduler = new LooperScheduler(Looper.getMainLooper());
        }
    }

    public static Scheduler mainThread() {
        return getInstance().mainThreadScheduler;
    }

    public static Scheduler from(Looper looper) {
        if (looper != null) {
            return new LooperScheduler(looper);
        }
        throw new NullPointerException("looper == null");
    }

    @Experimental
    public static void reset() {
        INSTANCE.set(null);
    }
}
