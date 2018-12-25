package kotlin.reflect;

import android.arch.lifecycle.GeneratedAdapter;
import java.util.List;
import java.util.Map;

/* compiled from: KCallable.kt */
public interface KCallable<R> extends KAnnotatedElement {
    R call(Object... objArr);

    R callBy(Map<KParameter, ? extends Object> map);

    String getName();

    List<KParameter> getParameters();

    GeneratedAdapter getReturnType$19a9b68b();

    List<Object> getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();
}
