package ru.rocketbank.core.model.references;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ReferenceResponse.kt */
public final class ReferenceResponse {
    private final Extract extract;

    public static /* bridge */ /* synthetic */ ReferenceResponse copy$default(ReferenceResponse referenceResponse, Extract extract, int i, Object obj) {
        if ((i & 1) != 0) {
            extract = referenceResponse.extract;
        }
        return referenceResponse.copy(extract);
    }

    public final Extract component1() {
        return this.extract;
    }

    public final ReferenceResponse copy(Extract extract) {
        Intrinsics.checkParameterIsNotNull(extract, "extract");
        return new ReferenceResponse(extract);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReferenceResponse) {
                if (Intrinsics.areEqual(this.extract, ((ReferenceResponse) obj).extract)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Extract extract = this.extract;
        return extract != null ? extract.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ReferenceResponse(extract=");
        stringBuilder.append(this.extract);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ReferenceResponse(Extract extract) {
        Intrinsics.checkParameterIsNotNull(extract, "extract");
        this.extract = extract;
    }

    public final Extract getExtract() {
        return this.extract;
    }
}
