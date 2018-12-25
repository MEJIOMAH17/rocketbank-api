package ru.rocketbank.core.manager.social;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: SocialUserModel.kt */
public final class SocialUserModel {
    private final String firstName;
    private final long id;
    private final String photoLink;
    private final String secondName;
    private String token;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialUserModel) {
            SocialUserModel socialUserModel = (SocialUserModel) obj;
            if (Intrinsics.areEqual(null, null) && Intrinsics.areEqual(null, null) && Intrinsics.areEqual(null, null)) {
                return ((this.id > socialUserModel.id ? 1 : (this.id == socialUserModel.id ? 0 : -1)) == 0) && Intrinsics.areEqual(this.token, socialUserModel.token);
            }
        }
    }

    public final int hashCode() {
        long j = this.id;
        int i = 0;
        int i2 = (((int) (j ^ (j >>> 32))) + 0) * 31;
        String str = this.token;
        if (str != null) {
            i = str.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SocialUserModel(firstName=");
        stringBuilder.append(null);
        stringBuilder.append(", secondName=");
        stringBuilder.append(null);
        stringBuilder.append(", photoLink=");
        stringBuilder.append(null);
        stringBuilder.append(", id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", token=");
        stringBuilder.append(this.token);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private SocialUserModel(long j, String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.firstName = null;
        this.secondName = null;
        this.photoLink = null;
        this.id = j;
        this.token = str;
    }

    public final long getId() {
        return this.id;
    }

    public final String getToken() {
        return this.token;
    }
}
