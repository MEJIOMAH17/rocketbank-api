package android.support.v4.util;

import android.support.annotation.RestrictTo;

@RestrictTo
public final class DebugUtils {
    private Class<?> first;
    private Class<?> second;

    public static void buildShortClassTag(Object obj, StringBuilder stringBuilder) {
        if (obj == null) {
            stringBuilder.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName == null || simpleName.length() <= 0) {
            simpleName = obj.getClass().getName();
            int lastIndexOf = simpleName.lastIndexOf(46);
            if (lastIndexOf > 0) {
                simpleName = simpleName.substring(lastIndexOf + 1);
            }
        }
        stringBuilder.append(simpleName);
        stringBuilder.append('{');
        stringBuilder.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public DebugUtils(Class<?> cls, Class<?> cls2) {
        this.first = cls;
        this.second = cls2;
    }

    public final void set(Class<?> cls, Class<?> cls2) {
        this.first = cls;
        this.second = cls2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MultiClassKey{first=");
        stringBuilder.append(this.first);
        stringBuilder.append(", second=");
        stringBuilder.append(this.second);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                DebugUtils debugUtils = (DebugUtils) obj;
                return this.first.equals(debugUtils.first) && this.second.equals(debugUtils.second) != null;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.first.hashCode() * 31) + this.second.hashCode();
    }
}
