package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;

public class hl {
    /* renamed from: b */
    private static final String f31b = "hl";
    /* renamed from: a */
    boolean f32a;
    /* renamed from: c */
    private final hm f33c;
    /* renamed from: d */
    private final File f34d;
    /* renamed from: e */
    private String f35e;

    public hl() {
        this(jr.m114a().f293a);
    }

    public hl(Context context) {
        this.f33c = new hm();
        this.f34d = context.getFileStreamPath(".flurryinstallreceiver.");
        String str = f31b;
        StringBuilder stringBuilder = new StringBuilder("Referrer file name if it exists:  ");
        stringBuilder.append(this.f34d);
        kf.m176a(3, str, stringBuilder.toString());
    }

    /* renamed from: a */
    public final synchronized Map<String, List<String>> m7a() {
        m6c();
        return hm.m10a(this.f35e);
    }

    /* renamed from: b */
    public final synchronized String m9b() {
        m6c();
        return this.f35e;
    }

    /* renamed from: a */
    public final synchronized void m8a(String str) {
        this.f32a = true;
        m5b(str);
        lq.m295a(this.f34d, this.f35e);
    }

    /* renamed from: b */
    private void m5b(String str) {
        if (str != null) {
            this.f35e = str;
        }
    }

    /* renamed from: c */
    private void m6c() {
        if (!this.f32a) {
            this.f32a = true;
            String str = f31b;
            StringBuilder stringBuilder = new StringBuilder("Loading referrer info from file: ");
            stringBuilder.append(this.f34d.getAbsolutePath());
            kf.m176a(4, str, stringBuilder.toString());
            String c = lq.m299c(this.f34d);
            kf.m178a(f31b, "Referrer file contents: ".concat(String.valueOf(c)));
            m5b(c);
        }
    }
}
