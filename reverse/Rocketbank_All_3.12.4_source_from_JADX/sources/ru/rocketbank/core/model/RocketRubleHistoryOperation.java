package ru.rocketbank.core.model;

import kotlin.jvm.internal.Ref;

/* compiled from: RocketRubleHistoryOperation.kt */
public class RocketRubleHistoryOperation {
    public static final Companion Companion = new Companion();
    private static final int OPERATION_ACTION = 10;
    private static final int OPERATION_ACTUAL = 12;
    private static final int OPERATION_APP_REVIEW = 6;
    private static final int OPERATION_BAR = 11;
    private static final int OPERATION_CHOOSEN_MONTH_CASH_BACK = 7;
    private static final int OPERATION_DELIMITER = 9;
    private static final int OPERATION_DISCOUNT = 5;
    private static final int OPERATION_FRIEND = 2;
    private static final int OPERATION_HEADER = -559034355;
    private static final int OPERATION_HISTORY = 4;
    private static final int OPERATION_MIGRATION = -1073623027;
    private static final int OPERATION_MONTH_CASHBACK = 3;
    private static final int OPERATION_NONE = 0;
    private static final int OPERATION_NOT_FOUND = 8;
    private static final int OPERATION_NO_COMPENSATION = -805306355;
    private static final int OPERATION_OPERATION = 14;
    private static final int OPERATION_PUSH = 1;
    private static final int OPERATION_ROCKETSHOP = 15;
    private static final int OPERATION_STATISTICS = 13;
    private Float amount;
    private AbstractOperation operationCustom;
    private int type;

    /* compiled from: RocketRubleHistoryOperation.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getOPERATION_NONE() {
            return RocketRubleHistoryOperation.OPERATION_NONE;
        }

        public final int getOPERATION_PUSH() {
            return RocketRubleHistoryOperation.OPERATION_PUSH;
        }

        public final int getOPERATION_FRIEND() {
            return RocketRubleHistoryOperation.OPERATION_FRIEND;
        }

        public final int getOPERATION_MONTH_CASHBACK() {
            return RocketRubleHistoryOperation.OPERATION_MONTH_CASHBACK;
        }

        public final int getOPERATION_HISTORY() {
            return RocketRubleHistoryOperation.OPERATION_HISTORY;
        }

        public final int getOPERATION_DISCOUNT() {
            return RocketRubleHistoryOperation.OPERATION_DISCOUNT;
        }

        public final int getOPERATION_APP_REVIEW() {
            return RocketRubleHistoryOperation.OPERATION_APP_REVIEW;
        }

        public final int getOPERATION_CHOOSEN_MONTH_CASH_BACK() {
            return RocketRubleHistoryOperation.OPERATION_CHOOSEN_MONTH_CASH_BACK;
        }

        public final int getOPERATION_NOT_FOUND() {
            return RocketRubleHistoryOperation.OPERATION_NOT_FOUND;
        }

        public final int getOPERATION_DELIMITER() {
            return RocketRubleHistoryOperation.OPERATION_DELIMITER;
        }

        public final int getOPERATION_ACTION() {
            return RocketRubleHistoryOperation.OPERATION_ACTION;
        }

        public final int getOPERATION_BAR() {
            return RocketRubleHistoryOperation.OPERATION_BAR;
        }

        public final int getOPERATION_ACTUAL() {
            return RocketRubleHistoryOperation.OPERATION_ACTUAL;
        }

        public final int getOPERATION_STATISTICS() {
            return RocketRubleHistoryOperation.OPERATION_STATISTICS;
        }

        public final int getOPERATION_OPERATION() {
            return RocketRubleHistoryOperation.OPERATION_OPERATION;
        }

        public final int getOPERATION_ROCKETSHOP() {
            return RocketRubleHistoryOperation.OPERATION_ROCKETSHOP;
        }

        public final int getOPERATION_MIGRATION() {
            return RocketRubleHistoryOperation.OPERATION_MIGRATION;
        }

        public final int getOPERATION_HEADER() {
            return RocketRubleHistoryOperation.OPERATION_HEADER;
        }

        public final int getOPERATION_NO_COMPENSATION() {
            return RocketRubleHistoryOperation.OPERATION_NO_COMPENSATION;
        }
    }

    public RocketRubleHistoryOperation(int i, AbstractOperation abstractOperation) {
        this.type = i;
        this.operationCustom = abstractOperation;
    }

    public /* synthetic */ RocketRubleHistoryOperation(int i, AbstractOperation abstractOperation, int i2, Ref ref) {
        if ((i2 & 2) != 0) {
            abstractOperation = null;
        }
        this(i, abstractOperation);
    }

    public final AbstractOperation getOperationCustom() {
        return this.operationCustom;
    }

    public final int getType() {
        return this.type;
    }

    public final void setOperationCustom(AbstractOperation abstractOperation) {
        this.operationCustom = abstractOperation;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final Float getAmount() {
        return this.amount;
    }

    public final void setAmount(Float f) {
        this.amount = f;
    }
}
