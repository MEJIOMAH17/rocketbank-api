package com.flurry.sdk;

public enum iq {
    INSTALL(1),
    SESSION_START(2),
    SESSION_END(3),
    APPLICATION_EVENT(4);
    
    /* renamed from: e */
    int f184e;

    private iq(int i) {
        this.f184e = i;
    }

    /* renamed from: a */
    public static iq m67a(int i) {
        switch (i) {
            case 1:
                return INSTALL;
            case 2:
                return SESSION_START;
            case 3:
                return SESSION_END;
            case 4:
                return APPLICATION_EVENT;
            default:
                return 0;
        }
    }
}
