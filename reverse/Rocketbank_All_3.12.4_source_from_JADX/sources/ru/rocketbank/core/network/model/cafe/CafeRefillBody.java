package ru.rocketbank.core.network.model.cafe;

/* compiled from: CafeRefillBody.kt */
public final class CafeRefillBody {
    private final long amount;

    public static /* bridge */ /* synthetic */ CafeRefillBody copy$default(CafeRefillBody cafeRefillBody, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cafeRefillBody.amount;
        }
        return cafeRefillBody.copy(j);
    }

    public final long component1() {
        return this.amount;
    }

    public final CafeRefillBody copy(long j) {
        return new CafeRefillBody(j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CafeRefillBody) {
            if (this.amount == ((CafeRefillBody) obj).amount) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.amount;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CafeRefillBody(amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CafeRefillBody(long j) {
        this.amount = j;
    }

    public final long getAmount() {
        return this.amount;
    }
}
