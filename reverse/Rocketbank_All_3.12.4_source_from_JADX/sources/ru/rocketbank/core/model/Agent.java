package ru.rocketbank.core.model;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Agent.kt */
public final class Agent {
    @SerializedName("hi_res_avatar_url")
    private String avatarUrl;
    private String info;
    private String name;
    @SerializedName("avg_rate")
    private float rate;
    @SerializedName("time_in_rocket")
    private String time;

    public Agent() {
        this(BitmapDescriptorFactory.HUE_RED, null, null, null, null, 31, null);
    }

    public static /* bridge */ /* synthetic */ Agent copy$default(Agent agent, float f, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = agent.rate;
        }
        if ((i & 2) != 0) {
            str = agent.avatarUrl;
        }
        String str5 = str;
        if ((i & 4) != 0) {
            str2 = agent.info;
        }
        String str6 = str2;
        if ((i & 8) != 0) {
            str3 = agent.name;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            str4 = agent.time;
        }
        return agent.copy(f, str5, str6, str7, str4);
    }

    public final float component1() {
        return this.rate;
    }

    public final String component2() {
        return this.avatarUrl;
    }

    public final String component3() {
        return this.info;
    }

    public final String component4() {
        return this.name;
    }

    public final String component5() {
        return this.time;
    }

    public final Agent copy(float f, String str, String str2, String str3, String str4) {
        return new Agent(f, str, str2, str3, str4);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Agent) {
                Agent agent = (Agent) obj;
                if (Float.compare(this.rate, agent.rate) == 0 && Intrinsics.areEqual(this.avatarUrl, agent.avatarUrl) && Intrinsics.areEqual(this.info, agent.info) && Intrinsics.areEqual(this.name, agent.name) && Intrinsics.areEqual(this.time, agent.time)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.rate) * 31;
        String str = this.avatarUrl;
        int i = 0;
        floatToIntBits = (floatToIntBits + (str != null ? str.hashCode() : 0)) * 31;
        str = this.info;
        floatToIntBits = (floatToIntBits + (str != null ? str.hashCode() : 0)) * 31;
        str = this.name;
        floatToIntBits = (floatToIntBits + (str != null ? str.hashCode() : 0)) * 31;
        str = this.time;
        if (str != null) {
            i = str.hashCode();
        }
        return floatToIntBits + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Agent(rate=");
        stringBuilder.append(this.rate);
        stringBuilder.append(", avatarUrl=");
        stringBuilder.append(this.avatarUrl);
        stringBuilder.append(", info=");
        stringBuilder.append(this.info);
        stringBuilder.append(", name=");
        stringBuilder.append(this.name);
        stringBuilder.append(", time=");
        stringBuilder.append(this.time);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Agent(float f, String str, String str2, String str3, String str4) {
        this.rate = f;
        this.avatarUrl = str;
        this.info = str2;
        this.name = str3;
        this.time = str4;
    }

    public final float getRate() {
        return this.rate;
    }

    public final void setRate(float f) {
        this.rate = f;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public final String getInfo() {
        return this.info;
    }

    public final void setInfo(String str) {
        this.info = str;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public /* synthetic */ Agent(float f, String str, String str2, String str3, String str4, int i, Ref ref) {
        if ((i & 1) != null) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        String str5 = null;
        ref = (i & 2) != null ? null : str;
        String str6 = (i & 4) != null ? null : str2;
        String str7 = (i & 8) != null ? null : str3;
        if ((i & 16) == null) {
            str5 = str4;
        }
        this(f, ref, str6, str7, str5);
    }

    public final String getTime() {
        return this.time;
    }

    public final void setTime(String str) {
        this.time = str;
    }
}
