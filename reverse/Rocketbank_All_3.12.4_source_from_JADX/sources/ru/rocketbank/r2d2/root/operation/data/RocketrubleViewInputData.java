package ru.rocketbank.r2d2.root.operation.data;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.ContextShopItem;

/* compiled from: OperationViewInputData.kt */
public final class RocketrubleViewInputData extends OperationViewInputData {
    private String description;
    private Operation parentOperation;
    private List<ContextShopItem> shopItems;

    public RocketrubleViewInputData(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        super(operation);
    }

    public final Operation getParentOperation() {
        return this.parentOperation;
    }

    public final void setParentOperation(Operation operation) {
        this.parentOperation = operation;
    }

    public final List<ContextShopItem> getShopItems() {
        return this.shopItems;
    }

    public final void setShopItems(List<ContextShopItem> list) {
        this.shopItems = list;
    }

    public final String getDescription() {
        return this.description;
    }

    public final void setDescription(String str) {
        this.description = str;
    }
}
