package com.flurry.sdk;

public class ln {
    /* renamed from: c */
    private static final String f419c = "ln";
    /* renamed from: a */
    long f420a = 1000;
    /* renamed from: b */
    boolean f421b = true;
    /* renamed from: d */
    private boolean f422d = false;
    /* renamed from: e */
    private lw f423e = new C11551(this);

    /* renamed from: com.flurry.sdk.ln$1 */
    class C11551 extends lw {
        /* renamed from: a */
        final /* synthetic */ ln f716a;

        C11551(ln lnVar) {
            this.f716a = lnVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            kb.m151a().m155a(new ll());
            if (this.f716a.f421b && this.f716a.f422d) {
                jr.m114a().m119a(this.f716a.f423e, this.f716a.f420a);
            }
        }
    }

    /* renamed from: a */
    public final synchronized void m280a() {
        if (!this.f422d) {
            jr.m114a().m119a(this.f423e, this.f420a);
            this.f422d = true;
        }
    }

    /* renamed from: b */
    public final synchronized void m281b() {
        if (this.f422d) {
            jr.m114a().m121c(this.f423e);
            this.f422d = false;
        }
    }
}
