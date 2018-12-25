package com.flurry.android;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.flurry.sdk.hk;
import com.flurry.sdk.ja;
import com.flurry.sdk.jd;
import com.flurry.sdk.jq;
import com.flurry.sdk.jr;
import com.flurry.sdk.js;
import com.flurry.sdk.jt;
import com.flurry.sdk.jz;
import com.flurry.sdk.ka;
import com.flurry.sdk.kb;
import com.flurry.sdk.kf;
import com.flurry.sdk.le;
import com.flurry.sdk.le.C0517a;
import com.flurry.sdk.lf;
import com.flurry.sdk.li;
import com.flurry.sdk.lr;
import com.flurry.sdk.mb;
import java.util.Date;
import java.util.Map;

public final class FlurryAgent {
    /* renamed from: a */
    private static final String f18a = "FlurryAgent";
    /* renamed from: b */
    private static final ka<le> f19b = new C10771();
    /* renamed from: c */
    private static FlurryAgentListener f20c = null;
    /* renamed from: d */
    private static boolean f21d = false;
    /* renamed from: e */
    private static int f22e = 5;
    /* renamed from: f */
    private static long f23f = 10000;
    /* renamed from: g */
    private static boolean f24g = true;
    /* renamed from: h */
    private static boolean f25h = false;
    /* renamed from: i */
    private static String f26i;

    /* renamed from: com.flurry.android.FlurryAgent$2 */
    static /* synthetic */ class C04682 {
        /* renamed from: a */
        static final /* synthetic */ int[] f11a = new int[C0517a.m262a().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = com.flurry.sdk.le.C0517a.m262a();
            r0 = r0.length;
            r0 = new int[r0];
            f11a = r0;
            r0 = f11a;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r1 = com.flurry.sdk.le.C0517a.f403b;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r1 = r1 - r2;	 Catch:{ NoSuchFieldError -> 0x0011 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0011 }
        L_0x0011:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.android.FlurryAgent.2.<clinit>():void");
        }
    }

    public static class Builder {
        /* renamed from: a */
        private static FlurryAgentListener f12a;
        /* renamed from: b */
        private boolean f13b = false;
        /* renamed from: c */
        private int f14c = 5;
        /* renamed from: d */
        private long f15d = 10000;
        /* renamed from: e */
        private boolean f16e = true;
        /* renamed from: f */
        private boolean f17f = false;

        public Builder withListener(FlurryAgentListener flurryAgentListener) {
            f12a = flurryAgentListener;
            return this;
        }

        public Builder withLogEnabled(boolean z) {
            this.f13b = z;
            return this;
        }

        public Builder withLogLevel(int i) {
            this.f14c = i;
            return this;
        }

        public Builder withContinueSessionMillis(long j) {
            this.f15d = j;
            return this;
        }

        public Builder withCaptureUncaughtExceptions(boolean z) {
            this.f16e = z;
            return this;
        }

        public Builder withPulseEnabled(boolean z) {
            this.f17f = z;
            return this;
        }

        public void build(Context context, String str) {
            FlurryAgent.m4a(f12a, this.f13b, this.f14c, this.f15d, this.f16e, this.f17f, context, str);
        }
    }

    /* renamed from: com.flurry.android.FlurryAgent$1 */
    class C10771 implements ka<le> {
        C10771() {
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            final le leVar = (le) jzVar;
            jr.m114a().m118a(new Runnable(this) {
                /* renamed from: b */
                final /* synthetic */ C10771 f10b;

                public final void run() {
                    if (C04682.f11a[leVar.f680c - 1] == 1) {
                        if (FlurryAgent.f20c != null) {
                            FlurryAgent.f20c.onSessionStarted();
                        }
                    }
                }
            });
        }
    }

    private FlurryAgent() {
    }

    @Deprecated
    public static synchronized void init(Context context, String str) {
        synchronized (FlurryAgent.class) {
            if (VERSION.SDK_INT < 10) {
                kf.m183b(f18a, "Device SDK Version older than 10");
            } else if (context == null) {
                throw new NullPointerException("Null context");
            } else if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("API key not specified");
            } else {
                if (jr.m114a() != null) {
                    kf.m190e(f18a, "Flurry is already initialized");
                }
                try {
                    mb.m352a();
                    jr.m115a(context, str);
                } catch (Throwable th) {
                    kf.m179a(f18a, "", th);
                }
                kf.m190e(f18a, "'init' method is deprecated.");
            }
        }
    }

    public static int getAgentVersion() {
        return js.m122a();
    }

    public static String getReleaseVersion() {
        return js.m123b();
    }

    @Deprecated
    public static void setFlurryAgentListener(FlurryAgentListener flurryAgentListener) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (flurryAgentListener == null) {
            kf.m183b(f18a, "Listener cannot be null");
            kb.m151a().m160b("com.flurry.android.sdk.FlurrySessionEvent", f19b);
        } else {
            f20c = flurryAgentListener;
            kb.m151a().m158a("com.flurry.android.sdk.FlurrySessionEvent", f19b);
            kf.m190e(f18a, "'setFlurryAgentListener' method is deprecated.");
        }
    }

    @Deprecated
    public static void setLogEnabled(boolean z) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        if (z) {
            kf.m181b();
        } else {
            kf.m174a();
        }
        kf.m190e(f18a, "'setLogEnabled' method is deprecated.");
    }

    @Deprecated
    public static void setLogLevel(int i) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        kf.m175a(i);
        kf.m190e(f18a, "'setLogLevel' method is deprecated.");
    }

    public static void setVersionName(String str) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String versionName passed to setVersionName was null.");
        } else {
            li.m651a().m268a("VersionName", (Object) str);
        }
    }

    public static void setReportLocation(boolean z) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else {
            li.m651a().m268a("ReportLocation", (Object) Boolean.valueOf(z));
        }
    }

    public static void setLocation(float f, float f2) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        Location location = new Location("Explicit");
        location.setLatitude((double) f);
        location.setLongitude((double) f2);
        li.m651a().m268a("ExplicitLocation", (Object) location);
    }

    public static void clearLocation() {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else {
            li.m651a().m268a("ExplicitLocation", null);
        }
    }

    @Deprecated
    public static void setContinueSessionMillis(long j) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (j < 5000) {
            kf.m183b(f18a, "Invalid time set for session resumption: ".concat(String.valueOf(j)));
        } else {
            li.m651a().m268a("ContinueSessionMillis", (Object) Long.valueOf(j));
            kf.m190e(f18a, "'setContinueSessionMillis' method is deprecated.");
        }
    }

    public static void setLogEvents(boolean z) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else {
            li.m651a().m268a("LogEvents", (Object) Boolean.valueOf(z));
        }
    }

    @Deprecated
    public static void setCaptureUncaughtExceptions(boolean z) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        li.m651a().m268a("CaptureUncaughtExceptions", (Object) Boolean.valueOf(z));
        kf.m190e(f18a, "'setCaptureUncaughtExceptions' method is deprecated.");
    }

    public static void addOrigin(String str, String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(String str, String str2, Map<String, String> map) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("originName not specified");
        } else if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("originVersion not specified");
        } else {
            try {
                jt.m125a().m127a(str, str2, map);
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
        }
    }

    @Deprecated
    public static void setPulseEnabled(boolean z) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        li.m651a().m268a("ProtonEnabled", (Object) Boolean.valueOf(z));
        if (!z) {
            li.m651a().m268a("analyticsEnabled", (Object) Boolean.TRUE);
        }
        kf.m190e(f18a, "'setPulseEnabled' method is deprecated.");
    }

    @Deprecated
    public static void onStartSession(Context context, String str) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (TextUtils.isEmpty(str) != null) {
            throw new IllegalArgumentException("Api key not specified");
        } else if (jr.m114a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            try {
                lf.m634a().m645b(context);
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
            kf.m190e(f18a, "'onStartSession' method is deprecated.");
        }
    }

    public static void onStartSession(Context context) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (jr.m114a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            try {
                lf.m634a().m645b(context);
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
        }
    }

    public static void onEndSession(Context context) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (jr.m114a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
        } else {
            try {
                lf.m634a().m647c(context);
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
        }
    }

    public static boolean isSessionActive() {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return false;
        }
        try {
            return lf.m634a().m649d();
        } catch (Throwable th) {
            kf.m179a(f18a, "", th);
            return false;
        }
    }

    public static String getSessionId() {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return null;
        } else if (jr.m114a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            try {
                jd.m535a();
                return jd.m536c();
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
                return null;
            }
        }
    }

    public static FlurryEventRecordStatus logEvent(String str) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return flurryEventRecordStatus;
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
                if (c != null) {
                    flurryEventRecordStatus = c.m521a(str, null, false);
                } else {
                    flurryEventRecordStatus = flurryEventRecordStatus2;
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to log event: ".concat(String.valueOf(str)), th);
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return flurryEventRecordStatus;
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else if (map == null) {
            kf.m183b(f18a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
                if (c != null) {
                    flurryEventRecordStatus = c.m521a(str, (Map) map, false);
                } else {
                    flurryEventRecordStatus = flurryEventRecordStatus2;
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to log event: ".concat(String.valueOf(str)), th);
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(FlurrySyndicationEventName flurrySyndicationEventName, String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return flurryEventRecordStatus;
        } else if (flurrySyndicationEventName == null) {
            kf.m183b(f18a, "String eventName passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else if (TextUtils.isEmpty(str)) {
            kf.m183b(f18a, "String syndicationId passed to logEvent was null or empty.");
            return flurryEventRecordStatus;
        } else if (map == null) {
            kf.m183b(f18a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else {
            try {
                hk.m375a();
                String flurrySyndicationEventName2 = flurrySyndicationEventName.toString();
                ja c = hk.m377c();
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
                if (c != null) {
                    flurryEventRecordStatus = c.m520a(flurrySyndicationEventName2, str, (Map) map);
                } else {
                    flurryEventRecordStatus = flurryEventRecordStatus2;
                }
            } catch (Throwable th) {
                String str2 = f18a;
                StringBuilder stringBuilder = new StringBuilder("Failed to log event: ");
                stringBuilder.append(flurrySyndicationEventName.toString());
                kf.m179a(str2, stringBuilder.toString(), th);
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return flurryEventRecordStatus;
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
                if (c != null) {
                    flurryEventRecordStatus = c.m521a(str, null, z);
                } else {
                    flurryEventRecordStatus = flurryEventRecordStatus2;
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to log event: ".concat(String.valueOf(str)), th);
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return flurryEventRecordStatus;
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else if (map == null) {
            kf.m183b(f18a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus;
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
                if (c != null) {
                    flurryEventRecordStatus = c.m521a(str, (Map) map, z);
                } else {
                    flurryEventRecordStatus = flurryEventRecordStatus2;
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to log event: ".concat(String.valueOf(str)), th);
            }
            return flurryEventRecordStatus;
        }
    }

    public static void endTimedEvent(String str) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                if (c != null) {
                    c.m528a(str, null);
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to signify the end of event: ".concat(String.valueOf(str)), th);
            }
        }
    }

    public static void endTimedEvent(String str, Map<String, String> map) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to endTimedEvent was null.");
        } else if (map == null) {
            kf.m183b(f18a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                if (c != null) {
                    c.m528a(str, (Map) map);
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "Failed to signify the end of event: ".concat(String.valueOf(str)), th);
            }
        }
    }

    @Deprecated
    public static void onError(String str, String str2, String str3) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            kf.m183b(f18a, "String message passed to onError was null.");
        } else if (str3 == null) {
            kf.m183b(f18a, "String errorClass passed to onError was null.");
        } else {
            try {
                hk.m375a();
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                if (stackTrace != null && stackTrace.length > 2) {
                    Object obj = new StackTraceElement[(stackTrace.length - 2)];
                    System.arraycopy(stackTrace, 2, obj, 0, obj.length);
                    stackTrace = obj;
                }
                Throwable th = new Throwable(str2);
                th.setStackTrace(stackTrace);
                ja c = hk.m377c();
                if (c != null) {
                    c.m527a(str, str2, str3, th);
                }
            } catch (Throwable th2) {
                kf.m179a(f18a, "", th2);
            }
            kf.m190e(f18a, "'onError' method is deprecated.");
        }
    }

    public static void onError(String str, String str2, Throwable th) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            kf.m183b(f18a, "String message passed to onError was null.");
        } else if (th == null) {
            kf.m183b(f18a, "Throwable passed to onError was null.");
        } else {
            try {
                hk.m375a();
                hk.m376a(str, str2, th);
            } catch (Throwable th2) {
                kf.m179a(f18a, "", th2);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to onEvent was null.");
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                if (c != null) {
                    c.m521a(str, null, false);
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
            kf.m190e(f18a, "'onEvent' method is deprecated.");
        }
    }

    @Deprecated
    public static void onEvent(String str, Map<String, String> map) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String eventId passed to onEvent was null.");
        } else if (map == null) {
            kf.m183b(f18a, "Parameters Map passed to onEvent was null.");
        } else {
            try {
                hk.m375a();
                ja c = hk.m377c();
                if (c != null) {
                    c.m521a(str, (Map) map, false);
                }
            } catch (Throwable th) {
                kf.m179a(f18a, "", th);
            }
            kf.m190e(f18a, "'onEvent' method is deprecated.");
        }
    }

    public static void onPageView() {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        try {
            hk.m375a();
            ja c = hk.m377c();
            if (c != null) {
                c.m531c();
            }
        } catch (Throwable th) {
            kf.m179a(f18a, "", th);
        }
    }

    @Deprecated
    public static void setLocationCriteria(Criteria criteria) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        }
        kf.m190e(f18a, "'setLocationCriteria' method is deprecated.");
    }

    public static void setAge(int i) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        if (i > 0 && i < 110) {
            li.m651a().m268a("Age", (Object) Long.valueOf(new Date(new Date(System.currentTimeMillis() - (((long) i) * 31449600000L)).getYear(), 1, 1).getTime()));
        }
    }

    public static void setGender(byte b) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        switch (b) {
            case (byte) 0:
            case (byte) 1:
                li.m651a().m268a("Gender", (Object) Byte.valueOf(b));
                return;
            default:
                li.m651a().m268a("Gender", (Object) Byte.valueOf((byte) -1));
                return;
        }
    }

    public static void setUserId(String str) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (str == null) {
            kf.m183b(f18a, "String userId passed to setUserId was null.");
        } else {
            li.m651a().m268a("UserId", (Object) lr.m310b(str));
        }
    }

    public static void setSessionOrigin(String str, String str2) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            kf.m183b(f18a, "String originName passed to setSessionOrigin was null or empty.");
        } else if (jr.m114a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            jd.m535a();
            jq i = jd.m542i();
            if (i != null) {
                i.m107a(str);
            }
            jd.m535a();
            str = jd.m542i();
            if (str != null) {
                str.m109b(str2);
            }
        }
    }

    public static void addSessionProperty(String str, String str2) {
        if (VERSION.SDK_INT < 10) {
            kf.m183b(f18a, "Device SDK Version older than 10");
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                if (jr.m114a() == null) {
                    throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
                }
                jd.m535a();
                jq i = jd.m542i();
                if (i != null) {
                    i.m108a(str, str2);
                }
                return;
            }
        }
        kf.m183b(f18a, "String name or value passed to addSessionProperty was null or empty.");
    }

    /* renamed from: a */
    static /* synthetic */ void m4a(FlurryAgentListener flurryAgentListener, boolean z, int i, long j, boolean z2, boolean z3, Context context, String str) {
        f20c = flurryAgentListener;
        setFlurryAgentListener(flurryAgentListener);
        f21d = z;
        setLogEnabled(z);
        f22e = i;
        setLogLevel(i);
        f23f = j;
        setContinueSessionMillis(j);
        f24g = z2;
        setCaptureUncaughtExceptions(z2);
        f25h = z3;
        setPulseEnabled(z3);
        f26i = str;
        init(context, f26i);
    }
}
