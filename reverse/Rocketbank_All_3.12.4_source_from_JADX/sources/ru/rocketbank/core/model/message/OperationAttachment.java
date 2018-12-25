package ru.rocketbank.core.model.message;

import ru.rocketbank.core.model.dto.operations.Operation;

/* compiled from: OperationAttachment.kt */
public final class OperationAttachment extends Attachment {
    private Operation operation;

    public final Operation getOperation() {
        return this.operation;
    }

    public final void setOperation(Operation operation) {
        this.operation = operation;
    }
}
