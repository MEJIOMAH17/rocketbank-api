package ru.rocketbank.core.user.impl;

import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.module.OpeationModule;
import ru.rocketbank.core.realm.module.WidgetModule;
import ru.rocketbank.core.user.WidgetStorage;

/* compiled from: RealmWidgetStorage.kt */
public final class RealmWidgetStorage implements WidgetStorage {
    public static final Companion Companion = new Companion();
    private static final String FILE_WIDGET_NAME = "widget.realm";
    private static final String TAG = "WidgetStoage";
    private final RealmConfiguration realmConfiguration;

    /* compiled from: RealmWidgetStorage.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RealmWidgetStorage() {
        Builder name = new Builder().name(FILE_WIDGET_NAME);
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(charsetName)");
        Object bytes = "sY74xnHAniHWFTyixfyPRkJc3DQIg1VYvpfRD0OZkPmrw3mNGSotO8JvvnS2tvBb".getBytes(forName);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        RealmConfiguration build = name.encryptionKey(bytes).schemaVersion(0).deleteRealmIfMigrationNeeded().modules(new WidgetModule(), new OpeationModule()).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "RealmConfiguration.Build…                 .build()");
        this.realmConfiguration = build;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void clear() {
        /*
        r4 = this;
        r0 = r4.getRealm();
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (io.realm.Realm) r2;	 Catch:{ Throwable -> 0x001c }
        r3 = new ru.rocketbank.core.user.impl.RealmWidgetStorage$clear$1$1;	 Catch:{ Throwable -> 0x001c }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x001c }
        r3 = (io.realm.Realm.Transaction) r3;	 Catch:{ Throwable -> 0x001c }
        r2.executeTransaction(r3);	 Catch:{ Throwable -> 0x001c }
        r2 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x001c }
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return;
    L_0x001a:
        r2 = move-exception;
        goto L_0x001e;
    L_0x001c:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x001a }
    L_0x001e:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmWidgetStorage.clear():void");
    }

    private io.realm.Realm getRealm() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.realmConfiguration;	 Catch:{ Throwable -> 0x000c }
        r0 = io.realm.Realm.getInstance(r0);	 Catch:{ Throwable -> 0x000c }
        r1 = "Realm.getInstance(realmConfiguration)";	 Catch:{ Throwable -> 0x000c }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x000c }
        goto L_0x001c;
    L_0x000c:
        r0 = r2.realmConfiguration;
        io.realm.Realm.deleteRealm(r0);
        r0 = r2.realmConfiguration;
        r0 = io.realm.Realm.getInstance(r0);
        r1 = "Realm.getInstance(realmConfiguration)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
    L_0x001c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmWidgetStorage.getRealm():io.realm.Realm");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final ru.rocketbank.core.realm.WidgetData read() {
        /*
        r4 = this;
        r0 = r4.getRealm();
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (io.realm.Realm) r2;	 Catch:{ Throwable -> 0x002a }
        r3 = ru.rocketbank.core.realm.WidgetData.class;
        r3 = r2.where(r3);	 Catch:{ Throwable -> 0x002a }
        r3 = r3.findFirst();	 Catch:{ Throwable -> 0x002a }
        r3 = (ru.rocketbank.core.realm.WidgetData) r3;	 Catch:{ Throwable -> 0x002a }
        if (r3 == 0) goto L_0x0023;
    L_0x0018:
        r3 = (io.realm.RealmModel) r3;	 Catch:{ Throwable -> 0x002a }
        r2 = r2.copyFromRealm(r3);	 Catch:{ Throwable -> 0x002a }
        r2 = (ru.rocketbank.core.realm.WidgetData) r2;	 Catch:{ Throwable -> 0x002a }
        r3 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x002a }
        goto L_0x0024;
    L_0x0023:
        r2 = r1;
    L_0x0024:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return r2;
    L_0x0028:
        r2 = move-exception;
        goto L_0x002c;
    L_0x002a:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x0028 }
    L_0x002c:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmWidgetStorage.read():ru.rocketbank.core.realm.WidgetData");
    }
}
