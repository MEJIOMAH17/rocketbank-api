package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import kotlin.jvm.internal.Ref;

/* compiled from: AnalyticsParallaxItem.kt */
public final class AnalyticsParallaxItem extends ParallaxItem {
    private final String avatar;
    private final boolean hasJointAccount;
    private final Integer jointId;
    private final String name;
    private final String status;

    public final String getName() {
        return this.name;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getStatus() {
        return this.status;
    }

    public final Integer getJointId() {
        return this.jointId;
    }

    public AnalyticsParallaxItem(String str, String str2, String str3, Integer num, boolean z) {
        this.name = str;
        this.avatar = str2;
        this.status = str3;
        this.jointId = num;
        this.hasJointAccount = z;
    }

    public /* synthetic */ AnalyticsParallaxItem(String str, String str2, String str3, Integer num, boolean z, int i, Ref ref) {
        if ((i & 16) != 0) {
            z = false;
        }
        this(str, str2, str3, num, z);
    }

    public final boolean getHasJointAccount() {
        return this.hasJointAccount;
    }
}
