package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.lj.C0520a;
import java.lang.Thread.UncaughtExceptionHandler;

public class lz implements ki, C0520a, UncaughtExceptionHandler {
    /* renamed from: a */
    private static final String f718a = "lz";
    /* renamed from: b */
    private boolean f719b;

    /* renamed from: a */
    public final void mo1366a(Context context) {
        context = li.m651a();
        this.f719b = ((Boolean) context.m266a("CaptureUncaughtExceptions")).booleanValue();
        context.m267a("CaptureUncaughtExceptions", (C0520a) this);
        String str = f718a;
        StringBuilder stringBuilder = new StringBuilder("initSettings, CrashReportingEnabled = ");
        stringBuilder.append(this.f719b);
        kf.m176a(4, str, stringBuilder.toString());
        context = ma.m349a();
        synchronized (context.f446b) {
            context.f446b.put(this, null);
        }
    }

    /* renamed from: b */
    public final void mo1367b() {
        ma.m350b();
        li.m651a().m269b("CaptureUncaughtExceptions", this);
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        if (str.equals("CaptureUncaughtExceptions") != null) {
            this.f719b = ((Boolean) obj).booleanValue();
            String str2 = f718a;
            StringBuilder stringBuilder = new StringBuilder("onSettingUpdate, CrashReportingEnabled = ");
            stringBuilder.append(this.f719b);
            kf.m176a(4, str2, stringBuilder.toString());
            return;
        }
        kf.m176a(6, f718a, "onSettingUpdate internal error!");
    }

    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
        if (this.f719b != null) {
            String str = "";
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                thread = new StringBuilder();
                if (th.getMessage() != null) {
                    StringBuilder stringBuilder = new StringBuilder(" (");
                    stringBuilder.append(th.getMessage());
                    stringBuilder.append(")\n");
                    thread.append(stringBuilder.toString());
                }
                str = thread.toString();
            } else if (th.getMessage() != null) {
                str = th.getMessage();
            }
            hk.m375a();
            hk.m376a("uncaught", str, th);
        }
        lf.m634a().m650e();
        ji.m552a().m562d();
    }
}
