package com.flurry.sdk;

import android.app.Activity;
import java.lang.ref.WeakReference;

public final class ju extends jz {
    /* renamed from: a */
    public WeakReference<Activity> f628a = new WeakReference(null);
    /* renamed from: b */
    public C0498a f629b;

    /* renamed from: com.flurry.sdk.ju$a */
    public enum C0498a {
        kCreated,
        kDestroyed,
        kPaused,
        kResumed,
        kStarted,
        kStopped,
        kSaveState
    }

    public ju() {
        super("com.flurry.android.sdk.ActivityLifecycleEvent");
    }
}
