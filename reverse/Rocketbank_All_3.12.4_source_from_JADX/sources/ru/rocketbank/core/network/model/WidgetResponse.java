package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;

/* compiled from: WidgetResponse.kt */
public final class WidgetResponse {
    private double balace;
    @SerializedName("cash_out_count")
    private int cashOutCount;
    @SerializedName("free_cash_out_limit")
    private int freeCashOutLimit;
    private double mimimiles;
    private double now;
    private Phone phone;
    @SerializedName("recent_friends")
    private List<WidgetFriend> recentFriends = new ArrayList();
    @SerializedName("recent_operations")
    private List<Operation> recentOperations = new ArrayList();
    private double rocketrubles;
    private double today;
    @SerializedName("unlimited_cashouts")
    private boolean unlimitedCashouts;

    /* compiled from: WidgetResponse.kt */
    public final class Phone {
        private String number = "";
        private String operator = "";

        public final String getNumber() {
            return this.number;
        }

        public final void setNumber(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.number = str;
        }

        public final String getOperator() {
            return this.operator;
        }

        public final void setOperator(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.operator = str;
        }
    }

    public final double getBalace() {
        return this.balace;
    }

    public final void setBalace(double d) {
        this.balace = d;
    }

    public final int getCashOutCount() {
        return this.cashOutCount;
    }

    public final void setCashOutCount(int i) {
        this.cashOutCount = i;
    }

    public final int getFreeCashOutLimit() {
        return this.freeCashOutLimit;
    }

    public final void setFreeCashOutLimit(int i) {
        this.freeCashOutLimit = i;
    }

    public final double getRocketrubles() {
        return this.rocketrubles;
    }

    public final void setRocketrubles(double d) {
        this.rocketrubles = d;
    }

    public final double getMimimiles() {
        return this.mimimiles;
    }

    public final void setMimimiles(double d) {
        this.mimimiles = d;
    }

    public final double getNow() {
        return this.now;
    }

    public final void setNow(double d) {
        this.now = d;
    }

    public final double getToday() {
        return this.today;
    }

    public final void setToday(double d) {
        this.today = d;
    }

    public final boolean getUnlimitedCashouts() {
        return this.unlimitedCashouts;
    }

    public final void setUnlimitedCashouts(boolean z) {
        this.unlimitedCashouts = z;
    }

    public final Phone getPhone() {
        return this.phone;
    }

    public final void setPhone(Phone phone) {
        this.phone = phone;
    }

    public final List<Operation> getRecentOperations() {
        return this.recentOperations;
    }

    public final void setRecentOperations(List<Operation> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.recentOperations = list;
    }

    public final List<WidgetFriend> getRecentFriends() {
        return this.recentFriends;
    }

    public final void setRecentFriends(List<WidgetFriend> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.recentFriends = list;
    }
}
