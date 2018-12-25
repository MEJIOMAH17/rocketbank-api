package com.google.firebase.auth;

import com.google.android.gms.common.internal.zzac;
import com.google.firebase.FirebaseException;

public class FirebaseAuthException extends FirebaseException {
    private final String zzbXS;

    public FirebaseAuthException(String str, String str2) {
        super(str2);
        this.zzbXS = zzac.zzdr(str);
    }

    public String getErrorCode() {
        return this.zzbXS;
    }
}
