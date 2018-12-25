package kotlin;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KotlinVersion.kt */
public final class KotlinVersion implements Comparable<KotlinVersion> {
    public static final KotlinVersion CURRENT = new KotlinVersion();
    public static final Companion Companion = new Companion();
    private final int major = 1;
    private final int minor = 2;
    private final int patch = 41;
    private final int version = 66089;

    /* compiled from: KotlinVersion.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int hashCode() {
        return 66089;
    }

    private KotlinVersion() {
    }

    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        Intrinsics.checkParameterIsNotNull((KotlinVersion) obj, FacebookRequestErrorClassification.KEY_OTHER);
        return null;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("1.2.");
        stringBuilder.append(41);
        return stringBuilder.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KotlinVersion)) {
            obj = null;
        }
        if (((KotlinVersion) obj) == null) {
            return null;
        }
        return true;
    }
}
