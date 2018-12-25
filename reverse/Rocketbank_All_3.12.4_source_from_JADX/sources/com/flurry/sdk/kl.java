package com.flurry.sdk;

import com.flurry.sdk.kn.C0507c;
import java.io.InputStream;
import java.io.OutputStream;

public final class kl<RequestObjectType, ResponseObjectType> extends kn {
    /* renamed from: a */
    public C0502a<RequestObjectType, ResponseObjectType> f745a;
    /* renamed from: b */
    public RequestObjectType f746b;
    /* renamed from: c */
    public kz<RequestObjectType> f747c;
    /* renamed from: d */
    public kz<ResponseObjectType> f748d;
    /* renamed from: x */
    private ResponseObjectType f749x;

    /* renamed from: com.flurry.sdk.kl$a */
    public interface C0502a<RequestObjectType, ResponseObjectType> {
        /* renamed from: a */
        void mo1371a(kl<RequestObjectType, ResponseObjectType> klVar, ResponseObjectType responseObjectType);
    }

    /* renamed from: com.flurry.sdk.kl$1 */
    class C11241 implements C0507c {
        /* renamed from: a */
        final /* synthetic */ kl f641a;

        C11241(kl klVar) {
            this.f641a = klVar;
        }

        /* renamed from: a */
        public final void mo1383a(OutputStream outputStream) throws Exception {
            if (this.f641a.f746b != null && this.f641a.f747c != null) {
                this.f641a.f747c.mo1369a(outputStream, this.f641a.f746b);
            }
        }

        /* renamed from: a */
        public final void mo1382a(kn knVar, InputStream inputStream) throws Exception {
            if (!(knVar.m666d() == null || this.f641a.f748d == null)) {
                this.f641a.f749x = this.f641a.f748d.mo1368a(inputStream);
            }
        }

        /* renamed from: a */
        public final void mo1381a(kn knVar) {
            kl.m677d(this.f641a);
        }
    }

    /* renamed from: a */
    public final void mo1370a() {
        this.f732k = new C11241(this);
        super.mo1370a();
    }

    /* renamed from: d */
    static /* synthetic */ void m677d(kl klVar) {
        if (klVar.f745a != null && !klVar.m664b()) {
            klVar.f745a.mo1371a(klVar, klVar.f749x);
        }
    }
}
