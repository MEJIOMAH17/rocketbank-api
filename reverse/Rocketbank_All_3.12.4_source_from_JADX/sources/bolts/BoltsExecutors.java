package bolts;

import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

final class BoltsExecutors {
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    private final ExecutorService background;
    private final Executor immediate;
    private final ScheduledExecutorService scheduled;

    static class ImmediateExecutor implements Executor {
        private ThreadLocal<Integer> executionDepth;

        private ImmediateExecutor() {
            this.executionDepth = new ThreadLocal();
        }

        private int decrementDepth() {
            Integer num = (Integer) this.executionDepth.get();
            if (num == null) {
                num = Integer.valueOf(0);
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.executionDepth.remove();
            } else {
                this.executionDepth.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        public final void execute(Runnable runnable) {
            Integer num = (Integer) this.executionDepth.get();
            if (num == null) {
                num = Integer.valueOf(0);
            }
            int intValue = num.intValue() + 1;
            this.executionDepth.set(Integer.valueOf(intValue));
            if (intValue <= 15) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    decrementDepth();
                }
            } else {
                BoltsExecutors.background().execute(runnable);
            }
            decrementDepth();
        }
    }

    private BoltsExecutors() {
        boolean z;
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            z = false;
        } else {
            z = property.toLowerCase(Locale.US).contains(AbstractSpiCall.ANDROID_CLIENT_TYPE);
        }
        this.background = !z ? Executors.newCachedThreadPool() : AndroidExecutors.newCachedThreadPool();
        this.scheduled = Executors.newSingleThreadScheduledExecutor();
        this.immediate = new ImmediateExecutor();
    }

    public static ExecutorService background() {
        return INSTANCE.background;
    }

    static Executor immediate() {
        return INSTANCE.immediate;
    }
}
