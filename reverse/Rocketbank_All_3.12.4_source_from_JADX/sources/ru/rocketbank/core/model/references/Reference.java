package ru.rocketbank.core.model.references;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Reference.kt */
public final class Reference {
    private final String kind;
    private final String lang;
    private final String title;

    public Reference() {
        this(null, null, null, 7, null);
    }

    public static /* bridge */ /* synthetic */ Reference copy$default(Reference reference, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reference.kind;
        }
        if ((i & 2) != 0) {
            str2 = reference.title;
        }
        if ((i & 4) != 0) {
            str3 = reference.lang;
        }
        return reference.copy(str, str2, str3);
    }

    public final String component1() {
        return this.kind;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.lang;
    }

    public final Reference copy(String str, String str2, String str3) {
        return new Reference(str, str2, str3);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Reference) {
                Reference reference = (Reference) obj;
                if (Intrinsics.areEqual(this.kind, reference.kind) && Intrinsics.areEqual(this.title, reference.title) && Intrinsics.areEqual(this.lang, reference.lang)) {
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
        String str2 = this.title;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.lang;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Reference(kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append(", title=");
        stringBuilder.append(this.title);
        stringBuilder.append(", lang=");
        stringBuilder.append(this.lang);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Reference(String str, String str2, String str3) {
        this.kind = str;
        this.title = str2;
        this.lang = str3;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getTitle() {
        return this.title;
    }

    public /* synthetic */ Reference(String str, String str2, String str3, int i, Ref ref) {
        if ((i & 1) != null) {
            str = null;
        }
        if ((i & 2) != null) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        this(str, str2, str3);
    }

    public final String getLang() {
        return this.lang;
    }
}
