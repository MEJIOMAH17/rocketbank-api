package ru.rocketbank.core.model;

import java.util.List;

/* compiled from: AtmsData.kt */
public final class AtmsData {
    private final List<Atm> atms;
    private final long timestamp;

    public final List<Atm> getAtms() {
        return this.atms;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }
}
