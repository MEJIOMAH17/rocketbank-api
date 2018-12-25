package com.flurry.sdk;

public enum ik {
    COMPLETE(1),
    TIMEOUT(2),
    INVALID_RESPONSE(3),
    PENDING_COMPLETION(4);
    
    /* renamed from: e */
    int f134e;

    private ik(int i) {
        this.f134e = i;
    }

    /* renamed from: a */
    public static ik m13a(int i) {
        switch (i) {
            case 1:
                return COMPLETE;
            case 2:
                return TIMEOUT;
            case 3:
                return INVALID_RESPONSE;
            case 4:
                return PENDING_COMPLETION;
            default:
                return 0;
        }
    }
}
