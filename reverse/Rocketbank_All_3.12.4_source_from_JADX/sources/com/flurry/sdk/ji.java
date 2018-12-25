package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.flurry.sdk.lj.C0520a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

public class ji implements C0520a {
    /* renamed from: a */
    private static ji f604a = null;
    /* renamed from: b */
    private static final String f605b = "ji";
    /* renamed from: c */
    private final int f606c = 3;
    /* renamed from: d */
    private final long f607d = 10000;
    /* renamed from: e */
    private final long f608e = 90000;
    /* renamed from: f */
    private final long f609f = 0;
    /* renamed from: g */
    private boolean f610g;
    /* renamed from: h */
    private Location f611h;
    /* renamed from: i */
    private long f612i = 0;
    /* renamed from: j */
    private LocationManager f613j = ((LocationManager) jr.m114a().f293a.getSystemService(Param.LOCATION));
    /* renamed from: k */
    private C0494a f614k = new C0494a(this);
    /* renamed from: l */
    private Location f615l;
    /* renamed from: m */
    private boolean f616m = false;
    /* renamed from: n */
    private int f617n = 0;
    /* renamed from: o */
    private ka<ll> f618o = new C11161(this);

    /* renamed from: com.flurry.sdk.ji$a */
    class C0494a implements LocationListener {
        /* renamed from: a */
        final /* synthetic */ ji f258a;

        public final void onProviderDisabled(String str) {
        }

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public C0494a(ji jiVar) {
            this.f258a = jiVar;
        }

        public final void onLocationChanged(Location location) {
            if (location != null) {
                this.f258a.f615l = location;
            }
            if (ji.m557c(this.f258a) >= 3) {
                kf.m176a(4, ji.f605b, "Max location reports reached, stopping");
                this.f258a.m559g();
            }
        }
    }

    /* renamed from: com.flurry.sdk.ji$1 */
    class C11161 implements ka<ll> {
        /* renamed from: a */
        final /* synthetic */ ji f603a;

        C11161(ji jiVar) {
            this.f603a = jiVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            if (this.f603a.f612i > 0 && this.f603a.f612i < System.currentTimeMillis()) {
                kf.m176a(4, ji.f605b, "No location received in 90 seconds , stopping LocationManager");
                this.f603a.m559g();
            }
        }
    }

    /* renamed from: c */
    static /* synthetic */ int m557c(ji jiVar) {
        int i = jiVar.f617n + 1;
        jiVar.f617n = i;
        return i;
    }

    /* renamed from: a */
    public static synchronized ji m552a() {
        ji jiVar;
        synchronized (ji.class) {
            if (f604a == null) {
                f604a = new ji();
            }
            jiVar = f604a;
        }
        return jiVar;
    }

    /* renamed from: b */
    public static void m554b() {
        if (f604a != null) {
            li.m651a().m269b("ReportLocation", f604a);
            li.m651a().m269b("ExplicitLocation", f604a);
        }
        f604a = null;
    }

    private ji() {
        lj a = li.m651a();
        this.f610g = ((Boolean) a.m266a("ReportLocation")).booleanValue();
        a.m267a("ReportLocation", (C0520a) this);
        String str = f605b;
        StringBuilder stringBuilder = new StringBuilder("initSettings, ReportLocation = ");
        stringBuilder.append(this.f610g);
        kf.m176a(4, str, stringBuilder.toString());
        this.f611h = (Location) a.m266a("ExplicitLocation");
        a.m267a("ExplicitLocation", (C0520a) this);
        String str2 = f605b;
        StringBuilder stringBuilder2 = new StringBuilder("initSettings, ExplicitLocation = ");
        stringBuilder2.append(this.f611h);
        kf.m176a(4, str2, stringBuilder2.toString());
    }

    /* renamed from: c */
    public final synchronized void m561c() {
        kf.m176a(4, f605b, "Location update requested");
        if (this.f617n < 3 && !this.f616m && this.f610g && this.f611h == null) {
            Context context = jr.m114a().f293a;
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                this.f617n = 0;
                String str = null;
                if (m553a(context)) {
                    str = "passive";
                } else if (m556b(context)) {
                    str = "network";
                }
                if (!TextUtils.isEmpty(str)) {
                    this.f613j.requestLocationUpdates(str, 10000, BitmapDescriptorFactory.HUE_RED, this.f614k, Looper.getMainLooper());
                }
                this.f615l = m551a(str);
                this.f612i = System.currentTimeMillis() + 90000;
                kf.m176a(4, f605b, "Register location timer");
                lm.m271a().m274a(this.f618o);
                this.f616m = true;
                kf.m176a(4, f605b, "LocationProvider started");
            }
        }
    }

    /* renamed from: d */
    public final synchronized void m562d() {
        kf.m176a(4, f605b, "Stop update location requested");
        m559g();
    }

    /* renamed from: e */
    public final Location m563e() {
        if (this.f611h != null) {
            return this.f611h;
        }
        Location location = null;
        if (this.f610g) {
            Context context = jr.m114a().f293a;
            if (!m553a(context) && !m556b(context)) {
                return null;
            }
            String str = m553a(context) ? "passive" : m556b(context) ? "network" : null;
            if (str != null) {
                Location a = m551a(str);
                if (a != null) {
                    this.f615l = a;
                }
                location = this.f615l;
            }
        }
        kf.m176a(4, f605b, "getLocation() = ".concat(String.valueOf(location)));
        return location;
    }

    /* renamed from: g */
    private void m559g() {
        if (this.f616m) {
            this.f613j.removeUpdates(this.f614k);
            this.f617n = 0;
            this.f612i = 0;
            kf.m176a(4, f605b, "Unregister location timer");
            lm.m271a().m275b(this.f618o);
            this.f616m = false;
            kf.m176a(4, f605b, "LocationProvider stopped");
        }
    }

    /* renamed from: a */
    private static boolean m553a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == null ? true : null;
    }

    /* renamed from: b */
    private static boolean m556b(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == null ? true : null;
    }

    /* renamed from: a */
    private Location m551a(String str) {
        return !TextUtils.isEmpty(str) ? this.f613j.getLastKnownLocation(str) : null;
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        int hashCode = str.hashCode();
        if (hashCode != -864112343) {
            if (hashCode == -300729815) {
                if (str.equals("ExplicitLocation") != null) {
                    str = true;
                    switch (str) {
                        case null:
                            this.f610g = ((Boolean) obj).booleanValue();
                            str = f605b;
                            obj = new StringBuilder("onSettingUpdate, ReportLocation = ");
                            obj.append(this.f610g);
                            kf.m176a(4, str, obj.toString());
                            return;
                        case 1:
                            this.f611h = (Location) obj;
                            str = f605b;
                            obj = new StringBuilder("onSettingUpdate, ExplicitLocation = ");
                            obj.append(this.f611h);
                            kf.m176a(4, str, obj.toString());
                            return;
                        default:
                            kf.m176a(6, f605b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
                            return;
                    }
                }
            }
        } else if (str.equals("ReportLocation") != null) {
            str = null;
            switch (str) {
                case null:
                    this.f610g = ((Boolean) obj).booleanValue();
                    str = f605b;
                    obj = new StringBuilder("onSettingUpdate, ReportLocation = ");
                    obj.append(this.f610g);
                    kf.m176a(4, str, obj.toString());
                    return;
                case 1:
                    this.f611h = (Location) obj;
                    str = f605b;
                    obj = new StringBuilder("onSettingUpdate, ExplicitLocation = ");
                    obj.append(this.f611h);
                    kf.m176a(4, str, obj.toString());
                    return;
                default:
                    kf.m176a(6, f605b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
                    return;
            }
        }
        str = -1;
        switch (str) {
            case null:
                this.f610g = ((Boolean) obj).booleanValue();
                str = f605b;
                obj = new StringBuilder("onSettingUpdate, ReportLocation = ");
                obj.append(this.f610g);
                kf.m176a(4, str, obj.toString());
                return;
            case 1:
                this.f611h = (Location) obj;
                str = f605b;
                obj = new StringBuilder("onSettingUpdate, ExplicitLocation = ");
                obj.append(this.f611h);
                kf.m176a(4, str, obj.toString());
                return;
            default:
                kf.m176a(6, f605b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
                return;
        }
    }
}
