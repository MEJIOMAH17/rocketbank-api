package ru.rocketbank.r2d2.root.operation.data;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticItem;

/* compiled from: OperationViewInputData.kt */
public class OperationViewInputData {
    private String dateString;
    private final ArrayList<StatisticItem> fullListValues = new ArrayList();
    private final ArrayList<Float> monthValues = new ArrayList();
    private final Operation operation;
    private Operation operationContext;
    private String placeName;
    private final ArrayList<StatisticItem> shortListValues = new ArrayList();
    private SourceViewData sourceData;
    private StatisticItem total;

    public OperationViewInputData(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operation = operation;
    }

    public final Operation getOperation() {
        return this.operation;
    }

    public final ArrayList<Float> getMonthValues() {
        return this.monthValues;
    }

    public final ArrayList<StatisticItem> getShortListValues() {
        return this.shortListValues;
    }

    public final ArrayList<StatisticItem> getFullListValues() {
        return this.fullListValues;
    }

    public final StatisticItem getTotal() {
        return this.total;
    }

    public final void setTotal(StatisticItem statisticItem) {
        this.total = statisticItem;
    }

    public final String getPlaceName() {
        return this.placeName;
    }

    public final void setPlaceName(String str) {
        this.placeName = str;
    }

    public final String getDateString() {
        return this.dateString;
    }

    public final void setDateString(String str) {
        this.dateString = str;
    }

    public final SourceViewData getSourceData() {
        return this.sourceData;
    }

    public final void setSourceData(SourceViewData sourceViewData) {
        this.sourceData = sourceViewData;
    }

    public final Operation getOperationContext() {
        return this.operationContext;
    }

    public final void setOperationContext(Operation operation) {
        this.operationContext = operation;
        if (operation != null) {
            this.operation.setComment(operation.getComment());
        }
    }
}
