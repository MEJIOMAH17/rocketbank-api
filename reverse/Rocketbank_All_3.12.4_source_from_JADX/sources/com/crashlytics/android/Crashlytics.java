package com.crashlytics.android;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.beta.Beta;
import com.crashlytics.android.core.CrashlyticsCore;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.KitGroup;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class Crashlytics extends Kit<Void> implements KitGroup {
    public final Answers answers;
    public final Beta beta;
    public final CrashlyticsCore core;
    public final Collection<? extends Kit> kits;

    protected final /* bridge */ /* synthetic */ Object doInBackground() {
        return null;
    }

    public final String getIdentifier() {
        return "com.crashlytics.sdk.android:crashlytics";
    }

    public final String getVersion() {
        return "2.9.1.23";
    }

    public Crashlytics() {
        this(new Answers(), new Beta(), new CrashlyticsCore());
    }

    private Crashlytics(Answers answers, Beta beta, CrashlyticsCore crashlyticsCore) {
        this.answers = answers;
        this.beta = beta;
        this.core = crashlyticsCore;
        this.kits = Collections.unmodifiableCollection(Arrays.asList(new Kit[]{answers, beta, crashlyticsCore}));
    }

    public final Collection<? extends Kit> getKits() {
        return this.kits;
    }

    public static void logException(Throwable th) {
        if (((Crashlytics) Fabric.getKit(Crashlytics.class)) == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
        ((Crashlytics) Fabric.getKit(Crashlytics.class)).core.logException(th);
    }

    public static void setUserIdentifier(String str) {
        if (((Crashlytics) Fabric.getKit(Crashlytics.class)) == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
        ((Crashlytics) Fabric.getKit(Crashlytics.class)).core.setUserIdentifier(str);
    }

    public static void setUserName(String str) {
        if (((Crashlytics) Fabric.getKit(Crashlytics.class)) == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
        ((Crashlytics) Fabric.getKit(Crashlytics.class)).core.setUserName(str);
    }

    public static void setString(String str, String str2) {
        if (((Crashlytics) Fabric.getKit(Crashlytics.class)) == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
        ((Crashlytics) Fabric.getKit(Crashlytics.class)).core.setString(str, str2);
    }
}
