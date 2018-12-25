package ru.rocketbank.core.events;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: PhoneNumberEvent.kt */
public final class PhoneNumberEvent {
    private final String phoneNumber;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PhoneNumberEvent) {
                if (Intrinsics.areEqual(this.phoneNumber, ((PhoneNumberEvent) obj).phoneNumber)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.phoneNumber;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("PhoneNumberEvent(phoneNumber=");
        stringBuilder.append(this.phoneNumber);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public PhoneNumberEvent(String str) {
        this.phoneNumber = str;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }
}
