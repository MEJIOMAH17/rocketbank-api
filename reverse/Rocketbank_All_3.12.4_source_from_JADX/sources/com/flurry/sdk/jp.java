package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class jp extends ke<kn> {
    /* renamed from: a */
    private static jp f625a;

    /* renamed from: a */
    public static synchronized jp m576a() {
        jp jpVar;
        synchronized (jp.class) {
            if (f625a == null) {
                f625a = new jp();
            }
            jpVar = f625a;
        }
        return jpVar;
    }

    /* renamed from: b */
    public static synchronized void m577b() {
        synchronized (jp.class) {
            if (f625a != null) {
                f625a.m173c();
            }
            f625a = null;
        }
    }

    protected jp() {
        super(jp.class.getName(), TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new kc()));
    }
}
