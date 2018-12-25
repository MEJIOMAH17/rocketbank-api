package com.google.firebase.messaging;

import java.util.Locale;

public final class SendException extends Exception {
    public static final int ERROR_INVALID_PARAMETERS = 1;
    public static final int ERROR_SIZE = 2;
    public static final int ERROR_TOO_MANY_MESSAGES = 4;
    public static final int ERROR_TTL_EXCEEDED = 3;
    public static final int ERROR_UNKNOWN = 0;
    private final int zzPY;

    SendException(String str) {
        super(str);
        this.zzPY = zzjF(str);
    }

    private int zzjF(String str) {
        if (str == null) {
            return 0;
        }
        str = str.toLowerCase(Locale.US);
        int i = -1;
        switch (str.hashCode()) {
            case -1743242157:
                if (str.equals("service_not_available")) {
                    i = 3;
                    break;
                }
                break;
            case -1290953729:
                if (str.equals("toomanymessages")) {
                    i = 4;
                    break;
                }
                break;
            case -920906446:
                if (str.equals("invalid_parameters")) {
                    i = 0;
                    break;
                }
                break;
            case -617027085:
                if (str.equals("messagetoobig")) {
                    i = 2;
                    break;
                }
                break;
            case -95047692:
                if (str.equals("missing_to")) {
                    i = 1;
                    break;
                }
                break;
            default:
                break;
        }
        switch (i) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            default:
                return 0;
        }
    }

    public final int getErrorCode() {
        return this.zzPY;
    }
}
