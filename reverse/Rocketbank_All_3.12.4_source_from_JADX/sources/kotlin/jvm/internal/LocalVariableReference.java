package kotlin.jvm.internal;

import kotlin.reflect.KDeclarationContainer;

/* compiled from: localVariableReferences.kt */
public class LocalVariableReference extends PropertyReference0 {
    public KDeclarationContainer getOwner() {
        throw new UnsupportedOperationException("Not supported for local property reference.");
    }

    public Object get() {
        throw new UnsupportedOperationException("Not supported for local property reference.");
    }
}
