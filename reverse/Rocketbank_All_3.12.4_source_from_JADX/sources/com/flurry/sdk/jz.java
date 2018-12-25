package com.flurry.sdk;

import android.text.TextUtils;

public abstract class jz {
    /* renamed from: g */
    protected String f321g = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";

    public jz(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Event must have a name!");
        }
        this.f321g = str;
    }

    /* renamed from: a */
    public final String m148a() {
        return this.f321g;
    }

    /* renamed from: b */
    public final void m149b() {
        kb.m151a().m155a(this);
    }
}
