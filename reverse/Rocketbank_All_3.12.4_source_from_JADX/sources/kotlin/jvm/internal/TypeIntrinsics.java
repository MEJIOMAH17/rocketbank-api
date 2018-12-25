package kotlin.jvm.internal;

import java.util.Collection;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableIterable;

public class TypeIntrinsics {
    private static void throwCce(Object obj, String str) {
        obj = obj == null ? "null" : obj.getClass().getName();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(obj);
        stringBuilder.append(" cannot be cast to ");
        stringBuilder.append(str);
        throw ((ClassCastException) Intrinsics.sanitizeStackTrace(new ClassCastException(stringBuilder.toString()), TypeIntrinsics.class.getName()));
    }

    public static Iterable asMutableIterable(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableIterable)) {
            throwCce(obj, "kotlin.collections.MutableIterable");
        }
        return castToIterable(obj);
    }

    private static Iterable castToIterable(Object obj) {
        try {
            return (Iterable) obj;
        } catch (Object obj2) {
            throw ((ClassCastException) Intrinsics.sanitizeStackTrace(obj2, TypeIntrinsics.class.getName()));
        }
    }

    public static Collection asMutableCollection(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableCollection)) {
            throwCce(obj, "kotlin.collections.MutableCollection");
        }
        return castToCollection(obj);
    }

    private static Collection castToCollection(Object obj) {
        try {
            return (Collection) obj;
        } catch (Object obj2) {
            throw ((ClassCastException) Intrinsics.sanitizeStackTrace(obj2, TypeIntrinsics.class.getName()));
        }
    }
}
