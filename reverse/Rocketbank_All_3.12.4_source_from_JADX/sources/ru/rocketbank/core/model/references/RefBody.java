package ru.rocketbank.core.model.references;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: RefBody.kt */
public final class RefBody {
    private final String kind;

    public static /* bridge */ /* synthetic */ RefBody copy$default(RefBody refBody, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refBody.kind;
        }
        return refBody.copy(str);
    }

    public final String component1() {
        return this.kind;
    }

    public final RefBody copy(String str) {
        Intrinsics.checkParameterIsNotNull(str, "kind");
        return new RefBody(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RefBody) {
                if (Intrinsics.areEqual(this.kind, ((RefBody) obj).kind)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.kind;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("RefBody(kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RefBody(String str) {
        Intrinsics.checkParameterIsNotNull(str, "kind");
        this.kind = str;
    }

    public final String getKind() {
        return this.kind;
    }
}
