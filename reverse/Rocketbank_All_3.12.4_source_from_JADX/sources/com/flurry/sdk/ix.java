package com.flurry.sdk;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.Toast;
import com.flurry.sdk.kl.C0502a;
import com.flurry.sdk.kn.C0506a;
import com.flurry.sdk.lj.C0520a;
import java.util.Arrays;

public class ix extends kr implements C0520a {
    /* renamed from: a */
    private static final String f539a = "ix";
    /* renamed from: f */
    private static String f540f = "http://data.flurry.com/aap.do";
    /* renamed from: g */
    private static String f541g = "https://data.flurry.com/aap.do";
    /* renamed from: h */
    private String f542h;
    /* renamed from: i */
    private boolean f543i;

    public ix() {
        this((byte) 0);
    }

    private ix(byte b) {
        super("Analytics", ix.class.getSimpleName());
        this.e = "AnalyticsData_";
        b = li.m651a();
        this.f543i = ((Boolean) b.m266a("UseHttps")).booleanValue();
        b.m267a("UseHttps", (C0520a) this);
        String str = f539a;
        StringBuilder stringBuilder = new StringBuilder("initSettings, UseHttps = ");
        stringBuilder.append(this.f543i);
        kf.m176a(4, str, stringBuilder.toString());
        str = (String) b.m266a("ReportUrl");
        b.m267a("ReportUrl", (C0520a) this);
        m486b(str);
        kf.m176a(4, f539a, "initSettings, ReportUrl = ".concat(String.valueOf(str)));
        m234b();
    }

    /* renamed from: a */
    public final void mo1373a(String str, Object obj) {
        String str2;
        int hashCode = str.hashCode();
        if (hashCode != -239660092) {
            if (hashCode == 1650629499) {
                if (str.equals("ReportUrl") != null) {
                    str = true;
                    switch (str) {
                        case null:
                            this.f543i = ((Boolean) obj).booleanValue();
                            str = f539a;
                            obj = new StringBuilder("onSettingUpdate, UseHttps = ");
                            obj.append(this.f543i);
                            kf.m176a(4, str, obj.toString());
                            return;
                        case 1:
                            str2 = (String) obj;
                            m486b(str2);
                            kf.m176a(4, f539a, "onSettingUpdate, ReportUrl = ".concat(String.valueOf(str2)));
                            return;
                        default:
                            kf.m176a(6, f539a, "onSettingUpdate internal error!");
                            return;
                    }
                }
            }
        } else if (str.equals("UseHttps") != null) {
            str = null;
            switch (str) {
                case null:
                    this.f543i = ((Boolean) obj).booleanValue();
                    str = f539a;
                    obj = new StringBuilder("onSettingUpdate, UseHttps = ");
                    obj.append(this.f543i);
                    kf.m176a(4, str, obj.toString());
                    return;
                case 1:
                    str2 = (String) obj;
                    m486b(str2);
                    kf.m176a(4, f539a, "onSettingUpdate, ReportUrl = ".concat(String.valueOf(str2)));
                    return;
                default:
                    kf.m176a(6, f539a, "onSettingUpdate internal error!");
                    return;
            }
        }
        str = -1;
        switch (str) {
            case null:
                this.f543i = ((Boolean) obj).booleanValue();
                str = f539a;
                obj = new StringBuilder("onSettingUpdate, UseHttps = ");
                obj.append(this.f543i);
                kf.m176a(4, str, obj.toString());
                return;
            case 1:
                str2 = (String) obj;
                m486b(str2);
                kf.m176a(4, f539a, "onSettingUpdate, ReportUrl = ".concat(String.valueOf(str2)));
                return;
            default:
                kf.m176a(6, f539a, "onSettingUpdate internal error!");
                return;
        }
    }

    /* renamed from: b */
    private void m486b(String str) {
        if (!(str == null || str.endsWith(".do"))) {
            kf.m176a(5, f539a, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        this.f542h = str;
    }

    /* renamed from: a */
    protected final void mo1379a(String str, String str2, final int i) {
        jr.m114a().m120b(new lw(this) {
            /* renamed from: b */
            final /* synthetic */ ix f538b;

            /* renamed from: a */
            public final void mo1370a() {
                if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                    hk.m375a();
                    ja c = hk.m377c();
                    if (c != null) {
                        c.f582j = true;
                    }
                }
            }
        });
        super.mo1379a(str, str2, i);
    }

    /* renamed from: a */
    protected final void mo1380a(byte[] bArr, final String str, final String str2) {
        String str3;
        if (this.f542h != null) {
            str3 = this.f542h;
        } else if (this.f543i) {
            str3 = f541g;
        } else {
            str3 = f540f;
        }
        String str4 = f539a;
        StringBuilder stringBuilder = new StringBuilder("FlurryDataSender: start upload data ");
        stringBuilder.append(Arrays.toString(bArr));
        stringBuilder.append(" with id = ");
        stringBuilder.append(str);
        stringBuilder.append(" to ");
        stringBuilder.append(str3);
        kf.m176a(4, str4, stringBuilder.toString());
        lx klVar = new kl();
        klVar.f727f = str3;
        klVar.f717w = 100000;
        klVar.f728g = C0506a.kPost;
        klVar.m663a("Content-Type", "application/octet-stream");
        klVar.f747c = new kv();
        klVar.f746b = bArr;
        klVar.f745a = new C0502a<byte[], Void>(this) {
            /* renamed from: c */
            final /* synthetic */ ix f536c;

            /* renamed from: a */
            public final /* synthetic */ void mo1371a(kl klVar, Object obj) {
                final int i = klVar.f737p;
                if (i > null) {
                    kf.m190e(ix.f539a, "Analytics report sent.");
                    String a = ix.f539a;
                    StringBuilder stringBuilder = new StringBuilder("FlurryDataSender: report ");
                    stringBuilder.append(str);
                    stringBuilder.append(" sent. HTTP response: ");
                    stringBuilder.append(i);
                    kf.m176a(3, a, stringBuilder.toString());
                    if (kf.m184c() <= 3 && kf.m189d() != null) {
                        jr.m114a().m118a(new Runnable(this) {
                            /* renamed from: b */
                            final /* synthetic */ C11001 f203b;

                            public final void run() {
                                Context context = jr.m114a().f293a;
                                StringBuilder stringBuilder = new StringBuilder("SD HTTP Response Code: ");
                                stringBuilder.append(i);
                                Toast.makeText(context, stringBuilder.toString(), 0).show();
                            }
                        });
                    }
                    this.f536c.mo1379a(str, str2, i);
                    this.f536c.m234b();
                    return;
                }
                this.f536c.m231a(str);
            }
        };
        jp.m576a().m171a((Object) this, klVar);
    }
}
