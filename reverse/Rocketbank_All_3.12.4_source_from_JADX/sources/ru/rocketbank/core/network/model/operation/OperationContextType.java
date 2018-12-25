package ru.rocketbank.core.network.model.operation;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: OperationContextType.kt */
public enum OperationContextType {
    ;
    
    private final String text;
    private final int type;

    protected OperationContextType(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        this.type = i;
        this.text = str;
    }

    public final String getText() {
        return this.text;
    }

    public final int getType() {
        return this.type;
    }
}
