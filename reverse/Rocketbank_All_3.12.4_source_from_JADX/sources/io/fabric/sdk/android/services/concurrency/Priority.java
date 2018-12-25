package io.fabric.sdk.android.services.concurrency;

public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    static <Y> int compareTo(PriorityProvider priorityProvider, Y y) {
        if (y instanceof PriorityProvider) {
            y = ((PriorityProvider) y).getPriority();
        } else {
            y = NORMAL;
        }
        return y.ordinal() - priorityProvider.getPriority().ordinal();
    }
}
