package ru.rocketbank.core.model.enums;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Cobrand.kt */
public enum Cobrand {
    ;
    
    public static final Companion Companion = null;
    private final String cobrandName;
    private final int drawableResId;
    private final int many;
    private final int menu;
    private final int money;
    private final int statisticsTitle;

    /* compiled from: Cobrand.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Cobrand fromCobrandName(String str) {
            for (Cobrand cobrand : Cobrand.values()) {
                if (Intrinsics.areEqual(cobrand.getCobrandName(), str)) {
                    break;
                }
            }
            Cobrand cobrand2 = null;
            return cobrand2 == null ? Cobrand.ROCKETBANK : cobrand2;
        }
    }

    protected Cobrand(String str, int i, int i2, int i3, int i4, int i5) {
        Intrinsics.checkParameterIsNotNull(str, "cobrandName");
        this.cobrandName = str;
        this.money = i;
        this.menu = i2;
        this.many = i3;
        this.statisticsTitle = i4;
        this.drawableResId = i5;
    }

    public final String getCobrandName() {
        return this.cobrandName;
    }

    public final int getMoney() {
        return this.money;
    }

    public final int getMenu() {
        return this.menu;
    }

    public final int getMany() {
        return this.many;
    }

    public final int getStatisticsTitle() {
        return this.statisticsTitle;
    }

    public final int getDrawableResId() {
        return this.drawableResId;
    }

    static {
        Companion = new Companion();
    }
}
