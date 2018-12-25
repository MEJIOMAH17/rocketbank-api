package com.flurry.sdk;

public enum ip {
    GET("GET", 0),
    PUT("PUT", 1),
    POST("POST", 2);
    
    /* renamed from: d */
    String f177d;
    /* renamed from: e */
    int f178e;

    private ip(String str, int i) {
        this.f177d = str;
        this.f178e = i;
    }

    /* renamed from: a */
    public static ip m66a(int i) {
        switch (i) {
            case 0:
                return GET;
            case 1:
                return PUT;
            case 2:
                return POST;
            default:
                return 0;
        }
    }
}
