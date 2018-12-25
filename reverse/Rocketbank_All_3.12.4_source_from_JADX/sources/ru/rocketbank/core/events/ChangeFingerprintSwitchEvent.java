package ru.rocketbank.core.events;

/* compiled from: ChangeFingerprintSwitchEvent.kt */
public final class ChangeFingerprintSwitchEvent {
    private final boolean state;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChangeFingerprintSwitchEvent) {
            if (this.state == ((ChangeFingerprintSwitchEvent) obj).state) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.state;
        return z ? 1 : z;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ChangeFingerprintSwitchEvent(state=");
        stringBuilder.append(this.state);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ChangeFingerprintSwitchEvent(boolean z) {
        this.state = z;
    }

    public final boolean getState() {
        return this.state;
    }
}
