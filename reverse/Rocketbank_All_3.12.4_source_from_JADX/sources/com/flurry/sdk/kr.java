package com.flurry.sdk;

import com.flurry.sdk.ks.C1142a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class kr {
    /* renamed from: a */
    private ka<jj> f378a = new C11341(this);
    /* renamed from: b */
    public final String f379b;
    /* renamed from: c */
    public Set<String> f380c = new HashSet();
    /* renamed from: d */
    public kt f381d;
    /* renamed from: e */
    public String f382e = "defaultDataKey_";

    /* renamed from: com.flurry.sdk.kr$a */
    public interface C0508a {
    }

    /* renamed from: com.flurry.sdk.kr$1 */
    class C11341 implements ka<jj> {
        /* renamed from: a */
        final /* synthetic */ kr f650a;

        C11341(kr krVar) {
            this.f650a = krVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            jj jjVar = (jj) jzVar;
            String str = this.f650a.f379b;
            StringBuilder stringBuilder = new StringBuilder("onNetworkStateChanged : isNetworkEnable = ");
            stringBuilder.append(jjVar.f619a);
            kf.m176a(4, str, stringBuilder.toString());
            if (jjVar.f619a != null) {
                this.f650a.m234b();
            }
        }
    }

    /* renamed from: com.flurry.sdk.kr$4 */
    class C11374 extends lw {
        /* renamed from: a */
        final /* synthetic */ C0508a f657a = null;
        /* renamed from: b */
        final /* synthetic */ kr f658b;

        C11374(kr krVar) {
            this.f658b = krVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            kr krVar = this.f658b;
            if (jk.m92a().f267b) {
                List<String> arrayList = new ArrayList(krVar.f381d.f391c.keySet());
                if (arrayList.isEmpty()) {
                    kf.m176a(4, krVar.f379b, "No more reports to send.");
                    return;
                }
                for (String str : arrayList) {
                    if (!krVar.m236c()) {
                        break;
                    }
                    List a = krVar.f381d.m253a(str);
                    String str2 = krVar.f379b;
                    StringBuilder stringBuilder = new StringBuilder("Number of not sent blocks = ");
                    stringBuilder.append(a.size());
                    kf.m176a(4, str2, stringBuilder.toString());
                    for (int i = 0; i < a.size(); i++) {
                        String str3 = (String) a.get(i);
                        if (!krVar.f380c.contains(str3)) {
                            if (!krVar.m236c()) {
                                break;
                            }
                            ks ksVar = (ks) new jy(jr.m114a().f293a.getFileStreamPath(ks.m237a(str3)), ".yflurrydatasenderblock.", 1, new C11396(krVar)).m145a();
                            if (ksVar == null) {
                                kf.m176a(6, krVar.f379b, "Internal ERROR! Cannot read!");
                                krVar.f381d.m255a(str3, str);
                            } else {
                                byte[] bArr = ksVar.f387b;
                                if (bArr != null) {
                                    if (bArr.length != 0) {
                                        kf.m176a(5, krVar.f379b, "Reading block info ".concat(String.valueOf(str3)));
                                        krVar.f380c.add(str3);
                                        krVar.mo1380a(bArr, str3, str);
                                    }
                                }
                                kf.m176a(6, krVar.f379b, "Internal ERROR! Report is empty!");
                                krVar.f381d.m255a(str3, str);
                            }
                        }
                    }
                }
                return;
            }
            kf.m176a(5, krVar.f379b, "Reports were not sent! No Internet connection!");
        }
    }

    /* renamed from: com.flurry.sdk.kr$5 */
    class C11385 implements lc<ks> {
        /* renamed from: a */
        final /* synthetic */ kr f659a;

        C11385(kr krVar) {
            this.f659a = krVar;
        }

        /* renamed from: a */
        public final kz<ks> mo1372a(int i) {
            return new C1142a();
        }
    }

    /* renamed from: com.flurry.sdk.kr$6 */
    class C11396 implements lc<ks> {
        /* renamed from: a */
        final /* synthetic */ kr f660a;

        C11396(kr krVar) {
            this.f660a = krVar;
        }

        /* renamed from: a */
        public final kz<ks> mo1372a(int i) {
            return new C1142a();
        }
    }

    /* renamed from: a */
    public abstract void mo1380a(byte[] bArr, String str, String str2);

    public kr(final String str, String str2) {
        this.f379b = str2;
        kb.m151a().m158a("com.flurry.android.sdk.NetworkStateEvent", this.f378a);
        jr.m114a().m120b(new lw(this) {
            /* renamed from: b */
            final /* synthetic */ kr f652b;

            /* renamed from: a */
            public final void mo1370a() {
                this.f652b.f381d = new kt(str);
            }
        });
    }

    /* renamed from: b */
    public final void m234b() {
        jr.m114a().m120b(new C11374(this));
    }

    /* renamed from: a */
    public void mo1379a(final String str, final String str2, int i) {
        jr.m114a().m120b(new lw(this) {
            /* renamed from: c */
            final /* synthetic */ kr f663c;

            /* renamed from: a */
            public final void mo1370a() {
                if (!this.f663c.f381d.m255a(str, str2)) {
                    String str = this.f663c.f379b;
                    StringBuilder stringBuilder = new StringBuilder("Internal error. Block wasn't deleted with id = ");
                    stringBuilder.append(str);
                    kf.m176a(6, str, stringBuilder.toString());
                }
                if (!this.f663c.f380c.remove(str)) {
                    str = this.f663c.f379b;
                    stringBuilder = new StringBuilder("Internal error. Block with id = ");
                    stringBuilder.append(str);
                    stringBuilder.append(" was not in progress state");
                    kf.m176a(6, str, stringBuilder.toString());
                }
            }
        });
    }

    /* renamed from: a */
    public final void m231a(final String str) {
        jr.m114a().m120b(new lw(this) {
            /* renamed from: b */
            final /* synthetic */ kr f665b;

            /* renamed from: a */
            public final void mo1370a() {
                if (!this.f665b.f380c.remove(str)) {
                    String str = this.f665b.f379b;
                    StringBuilder stringBuilder = new StringBuilder("Internal error. Block with id = ");
                    stringBuilder.append(str);
                    stringBuilder.append(" was not in progress state");
                    kf.m176a(6, str, stringBuilder.toString());
                }
            }
        });
    }

    /* renamed from: b */
    public final void m235b(final byte[] bArr, final String str, final String str2) {
        if (bArr != null) {
            if (bArr.length != 0) {
                jr.m114a().m120b(new lw(this) {
                    /* renamed from: d */
                    final /* synthetic */ kr f656d;

                    /* renamed from: a */
                    public final void mo1370a() {
                        kr krVar = this.f656d;
                        byte[] bArr = bArr;
                        String str = str;
                        String str2 = str2;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(krVar.f382e);
                        stringBuilder.append(str);
                        stringBuilder.append("_");
                        stringBuilder.append(str2);
                        str = stringBuilder.toString();
                        ks ksVar = new ks(bArr);
                        String str3 = ksVar.f386a;
                        new jy(jr.m114a().f293a.getFileStreamPath(ks.m237a(str3)), ".yflurrydatasenderblock.", 1, new C11385(krVar)).m146a(ksVar);
                        String str4 = krVar.f379b;
                        StringBuilder stringBuilder2 = new StringBuilder("Saving Block File ");
                        stringBuilder2.append(str3);
                        stringBuilder2.append(" at ");
                        stringBuilder2.append(jr.m114a().f293a.getFileStreamPath(ks.m237a(str3)));
                        kf.m176a(5, str4, stringBuilder2.toString());
                        krVar.f381d.m254a(ksVar, str);
                    }
                });
                m234b();
                return;
            }
        }
        kf.m176a((int) 6, this.f379b, "Report that has to be sent is EMPTY or NULL");
    }

    /* renamed from: c */
    final boolean m236c() {
        return this.f380c.size() <= 5;
    }
}
