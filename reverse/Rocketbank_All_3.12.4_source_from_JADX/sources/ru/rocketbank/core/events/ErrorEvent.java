package ru.rocketbank.core.events;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ErrorEvent.kt */
public final class ErrorEvent {
    private Throwable exception;
    private int messageStringResource = C0859R.string.sync_contacts_error;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ErrorEvent) {
            ErrorEvent errorEvent = (ErrorEvent) obj;
            return (this.messageStringResource == errorEvent.messageStringResource) && Intrinsics.areEqual(this.exception, errorEvent.exception);
        }
    }

    public final int hashCode() {
        int i = this.messageStringResource * 31;
        Throwable th = this.exception;
        return i + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ErrorEvent(messageStringResource=");
        stringBuilder.append(this.messageStringResource);
        stringBuilder.append(", exception=");
        stringBuilder.append(this.exception);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ErrorEvent(Throwable th) {
        this.exception = th;
    }

    public final Throwable getException() {
        return this.exception;
    }

    public final int getMessageStringResource() {
        return this.messageStringResource;
    }
}
