package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import java.util.Random;

final class RandomBackoff implements Backoff {
    final Backoff backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(Backoff backoff) {
        this(backoff, new Random());
    }

    private RandomBackoff(Backoff backoff, Random random) {
        if (backoff == null) {
            throw new NullPointerException("backoff must not be null");
        }
        this.backoff = backoff;
        this.jitterPercent = 0.1d;
        this.random = random;
    }

    public final long getDelayMillis(int i) {
        return (long) ((0.9d + (this.random.nextDouble() * 0.20000000000000007d)) * ((double) this.backoff.getDelayMillis(i)));
    }
}
