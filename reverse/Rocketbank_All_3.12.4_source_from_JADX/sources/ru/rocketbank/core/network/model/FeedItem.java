package ru.rocketbank.core.network.model;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;

/* compiled from: FeedItem.kt */
public final class FeedItem {
    public static final int CLOSE_ACTION = 12;
    public static final Companion Companion = new Companion();
    public static final int OPEERATION_DELIVERY = 15;
    public static final int OPERATION_ACTION = 10;
    public static final int OPERATION_AP = 18;
    public static final int OPERATION_CHOOSEN_MONTH_CASH_BACK = 7;
    public static final int OPERATION_DELIMITER = 9;
    public static final int OPERATION_DISCOUNT = 5;
    public static final int OPERATION_FRIEND = 2;
    public static final int OPERATION_HEADER = -1341435904;
    public static final int OPERATION_MONTH_CASHBACK = 3;
    public static final int OPERATION_NEW_PASSPORT = 19;
    public static final int OPERATION_NONE = 0;
    public static final int OPERATION_ONETWOTRIP = 17;
    public static final int OPERATION_OPERATION = 4;
    public static final int OPERATION_PUSH = 1;
    public static final int OPERATION_ROCKETRUBLES = 16;
    public static final int OPERATION_SALARY_TARIFFS = 14;
    public static final int OPERATION_SEARCH_HEADER = -554844433;
    public static final int OPERATION_TAX_GIBDD = 13;
    public static final int TRANSFER_TO_SAFE_ACCOUNT = 20;
    private AbstractOperation operation;
    private final int type;

    /* compiled from: FeedItem.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public FeedItem(int i, AbstractOperation abstractOperation) {
        this.type = i;
        this.operation = abstractOperation;
    }

    public final AbstractOperation getOperation() {
        return this.operation;
    }

    public final int getType() {
        return this.type;
    }

    public final void setOperation(AbstractOperation abstractOperation) {
        this.operation = abstractOperation;
    }

    public final long getHappenedAt() {
        if (this.operation == null) {
            return 0;
        }
        AbstractOperation abstractOperation = this.operation;
        if (abstractOperation == null) {
            Intrinsics.throwNpe();
        }
        return abstractOperation.getHappenedAt();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof FeedItem)) {
            return false;
        }
        FeedItem feedItem = (FeedItem) obj;
        if (feedItem.type != this.type) {
            return false;
        }
        if (this.operation == feedItem.operation) {
            return true;
        }
        if (this.operation != null) {
            if (feedItem.operation != null) {
                return Intrinsics.areEqual(this.operation, feedItem.operation);
            }
        }
        return false;
    }

    public final int hashCode() {
        AbstractOperation abstractOperation = this.operation;
        return abstractOperation != null ? abstractOperation.hashCode() : 0;
    }
}
