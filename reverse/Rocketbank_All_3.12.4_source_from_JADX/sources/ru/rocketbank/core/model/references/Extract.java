package ru.rocketbank.core.model.references;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Extract.kt */
public final class Extract {
    private final String kind;
    private final String url;

    public static /* bridge */ /* synthetic */ Extract copy$default(Extract extract, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = extract.kind;
        }
        if ((i & 2) != 0) {
            str2 = extract.url;
        }
        return extract.copy(str, str2);
    }

    public final String component1() {
        return this.kind;
    }

    public final String component2() {
        return this.url;
    }

    public final Extract copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "kind");
        Intrinsics.checkParameterIsNotNull(str2, "url");
        return new Extract(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Extract) {
                Extract extract = (Extract) obj;
                if (Intrinsics.areEqual(this.kind, extract.kind) && Intrinsics.areEqual(this.url, extract.url)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.kind;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Extract(kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append(", url=");
        stringBuilder.append(this.url);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Extract(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "kind");
        Intrinsics.checkParameterIsNotNull(str2, "url");
        this.kind = str;
        this.url = str2;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getUrl() {
        return this.url;
    }
}
