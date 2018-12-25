package ru.rocketbank.core.network.model;

import ru.rocketbank.core.model.dto.operations.Operation;

/* compiled from: ContextResponse.kt */
public final class ContextResponse {
    private Operation operation;

    public final Operation getOperation() {
        return this.operation;
    }

    public final void setOperation(Operation operation) {
        this.operation = operation;
    }
}
