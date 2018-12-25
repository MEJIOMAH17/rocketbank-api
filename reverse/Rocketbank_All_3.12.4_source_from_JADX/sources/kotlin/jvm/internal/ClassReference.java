package kotlin.jvm.internal;

import android.arch.lifecycle.MethodCallsLogger;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.KotlinReflectionNotSupportedError;

/* compiled from: ClassReference.kt */
public final class ClassReference implements OnLoadCompleteListener<Object>, ClassBasedDeclarationContainer {
    private final Class<?> jClass;

    public ClassReference(Class<?> cls) {
        Intrinsics.checkParameterIsNotNull(cls, "jClass");
        this.jClass = cls;
    }

    public final Class<?> getJClass() {
        return this.jClass;
    }

    public final boolean equals(Object obj) {
        return (!(obj instanceof ClassReference) || Intrinsics.areEqual(MethodCallsLogger.getJavaObjectType$53192d4(this), MethodCallsLogger.getJavaObjectType$53192d4((OnLoadCompleteListener) obj)) == null) ? null : true;
    }

    public final int hashCode() {
        return MethodCallsLogger.getJavaObjectType$53192d4(this).hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.jClass.toString());
        stringBuilder.append(" (Kotlin reflection is not available)");
        return stringBuilder.toString();
    }

    public final List<Annotation> getAnnotations() {
        throw new KotlinReflectionNotSupportedError();
    }
}
