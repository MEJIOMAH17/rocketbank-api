package ru.rocketbank.core.events;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ResultPermissionEvent.kt */
public final class ResultPermissionEvent {
    private final int[] grantResults;
    private final String[] permissions;
    private int requestCode;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ResultPermissionEvent) {
            ResultPermissionEvent resultPermissionEvent = (ResultPermissionEvent) obj;
            return (this.requestCode == resultPermissionEvent.requestCode) && Intrinsics.areEqual(this.permissions, resultPermissionEvent.permissions) && Intrinsics.areEqual(this.grantResults, resultPermissionEvent.grantResults);
        }
    }

    public final int hashCode() {
        int i = this.requestCode * 31;
        String[] strArr = this.permissions;
        int i2 = 0;
        i = (i + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        int[] iArr = this.grantResults;
        if (iArr != null) {
            i2 = Arrays.hashCode(iArr);
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ResultPermissionEvent(requestCode=");
        stringBuilder.append(this.requestCode);
        stringBuilder.append(", permissions=");
        stringBuilder.append(Arrays.toString(this.permissions));
        stringBuilder.append(", grantResults=");
        stringBuilder.append(Arrays.toString(this.grantResults));
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ResultPermissionEvent(int i, String[] strArr, int[] iArr) {
        this.requestCode = i;
        this.permissions = strArr;
        this.grantResults = iArr;
    }

    public final int[] getGrantResults() {
        return this.grantResults;
    }

    public final String[] getPermissions() {
        return this.permissions;
    }

    public final int getRequestCode() {
        return this.requestCode;
    }

    public final boolean isPermitted() {
        if (this.permissions != null) {
            if (this.grantResults != null) {
                boolean z = true;
                int length = this.permissions.length - 1;
                if (length >= 0) {
                    int i = 0;
                    boolean z2 = true;
                    while (true) {
                        z2 = z2 && (this.grantResults[i] != 0);
                        if (i == length) {
                            break;
                        }
                        i++;
                    }
                    z = z2;
                }
                return z;
            }
        }
        return false;
    }
}
