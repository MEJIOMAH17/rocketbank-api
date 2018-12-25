package ru.rocketbank.core.model;

import com.facebook.internal.NativeProtocol;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequestPermissionEvent.kt */
public final class RequestPermissionEvent {
    private String[] permissions;

    public RequestPermissionEvent(String[] strArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        this.permissions = strArr;
    }

    public final String[] getPermissions() {
        return this.permissions;
    }

    public final void setPermissions(String[] strArr) {
        Intrinsics.checkParameterIsNotNull(strArr, "<set-?>");
        this.permissions = strArr;
    }
}
