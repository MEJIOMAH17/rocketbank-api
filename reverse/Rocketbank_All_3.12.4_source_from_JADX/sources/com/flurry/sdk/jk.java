package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class jk extends BroadcastReceiver {
    /* renamed from: c */
    private static jk f265c;
    /* renamed from: a */
    boolean f266a;
    /* renamed from: b */
    public boolean f267b;
    /* renamed from: d */
    private boolean f268d = false;

    /* renamed from: com.flurry.sdk.jk$a */
    public enum C0495a {
        NONE_OR_UNKNOWN(0),
        NETWORK_AVAILABLE(1),
        WIFI(2),
        CELL(3);
        
        /* renamed from: e */
        public int f264e;

        private C0495a(int i) {
            this.f264e = i;
        }
    }

    /* renamed from: a */
    public static synchronized jk m92a() {
        jk jkVar;
        synchronized (jk.class) {
            if (f265c == null) {
                f265c = new jk();
            }
            jkVar = f265c;
        }
        return jkVar;
    }

    /* renamed from: b */
    public static synchronized void m94b() {
        synchronized (jk.class) {
            if (f265c != null) {
                f265c.m96e();
            }
            f265c = null;
        }
    }

    private jk() {
        boolean z = false;
        Context context = jr.m114a().f293a;
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            z = true;
        }
        this.f268d = z;
        this.f267b = m93a(context);
        if (this.f268d) {
            m95d();
        }
    }

    /* renamed from: d */
    private synchronized void m95d() {
        if (!this.f266a) {
            Context context = jr.m114a().f293a;
            this.f267b = m93a(context);
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f266a = true;
        }
    }

    /* renamed from: e */
    private synchronized void m96e() {
        if (this.f266a) {
            jr.m114a().f293a.unregisterReceiver(this);
            this.f266a = false;
        }
    }

    public final void onReceive(Context context, Intent intent) {
        Intent a = m93a(context);
        if (this.f267b != a) {
            this.f267b = a;
            jz jjVar = new jj();
            jjVar.f619a = a;
            jjVar.f620b = m98c();
            kb.m151a().m155a(jjVar);
        }
    }

    /* renamed from: a */
    private boolean m93a(Context context) {
        if (this.f268d) {
            if (context != null) {
                context = m97f().getActiveNetworkInfo();
                if (context == null || context.isConnected() == null) {
                    return null;
                }
                return true;
            }
        }
        return true;
    }

    /* renamed from: c */
    public final C0495a m98c() {
        if (!this.f268d) {
            return C0495a.NONE_OR_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = m97f().getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type == 8) {
                    return C0495a.NONE_OR_UNKNOWN;
                }
                switch (type) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        return C0495a.CELL;
                    case 1:
                        return C0495a.WIFI;
                    default:
                        if (activeNetworkInfo.isConnected()) {
                            return C0495a.NETWORK_AVAILABLE;
                        }
                        return C0495a.NONE_OR_UNKNOWN;
                }
            }
        }
        return C0495a.NONE_OR_UNKNOWN;
    }

    /* renamed from: f */
    private static ConnectivityManager m97f() {
        return (ConnectivityManager) jr.m114a().f293a.getSystemService("connectivity");
    }
}
