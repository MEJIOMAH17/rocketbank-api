package com.github.barteksc.pdfviewer;

import android.os.Looper;
import io.realm.internal.Capabilities;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: com.github.barteksc.pdfviewer.R */
public final class C1156R implements Capabilities {
    private final boolean isIntentServiceThread;
    private final Looper looper = Looper.myLooper();

    /* renamed from: com.github.barteksc.pdfviewer.R$drawable */
    public static final class drawable {
        public void addSuppressed(Throwable th, Throwable th2) {
            Intrinsics.checkParameterIsNotNull(th, "cause");
            Intrinsics.checkParameterIsNotNull(th2, "exception");
        }
    }

    public C1156R() {
        String name = Thread.currentThread().getName();
        boolean z = name != null && name.startsWith("IntentService[");
        this.isIntentServiceThread = z;
    }

    public final boolean canDeliverNotification() {
        return (this.looper != null) && !this.isIntentServiceThread;
    }

    public final void checkCanDeliverNotification(String str) {
        StringBuilder stringBuilder;
        if ((this.looper != null ? 1 : null) == null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(" Realm cannot be automatically updated on a thread without a looper.");
            throw new IllegalStateException(stringBuilder.toString());
        } else if (this.isIntentServiceThread) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(" Realm cannot be automatically updated on an IntentService thread.");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }
}
