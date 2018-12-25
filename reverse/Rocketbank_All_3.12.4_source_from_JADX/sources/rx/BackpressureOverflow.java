package rx;

import rx.annotations.Beta;
import rx.exceptions.MissingBackpressureException;

@Beta
public final class BackpressureOverflow {
    public static final Strategy ON_OVERFLOW_DEFAULT;
    public static final Strategy ON_OVERFLOW_DROP_LATEST = DropLatest.INSTANCE;
    public static final Strategy ON_OVERFLOW_DROP_OLDEST = DropOldest.INSTANCE;
    public static final Strategy ON_OVERFLOW_ERROR;

    public interface Strategy {
        boolean mayAttemptDrop() throws MissingBackpressureException;
    }

    static class DropLatest implements Strategy {
        static final DropLatest INSTANCE = new DropLatest();

        public boolean mayAttemptDrop() {
            return false;
        }

        private DropLatest() {
        }
    }

    static class DropOldest implements Strategy {
        static final DropOldest INSTANCE = new DropOldest();

        public boolean mayAttemptDrop() {
            return true;
        }

        private DropOldest() {
        }
    }

    static class Error implements Strategy {
        static final Error INSTANCE = new Error();

        private Error() {
        }

        public boolean mayAttemptDrop() throws MissingBackpressureException {
            throw new MissingBackpressureException("Overflowed buffer");
        }
    }

    static {
        Strategy strategy = Error.INSTANCE;
        ON_OVERFLOW_ERROR = strategy;
        ON_OVERFLOW_DEFAULT = strategy;
    }
}
