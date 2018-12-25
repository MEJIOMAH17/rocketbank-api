package ru.rocketbank.core.model.shop;

import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.RealmCartItem;
import ru.rocketbank.core.realm.module.CartModule;
import rx.Observable;

/* compiled from: CartStorage.kt */
public final class CartStorage {
    public static final Companion Companion = new Companion();
    private static final String TAG = "CartStorage";
    private final RealmConfiguration realmConfiguration;

    /* compiled from: CartStorage.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return CartStorage.TAG;
        }
    }

    public CartStorage() {
        RealmConfiguration build = new Builder().name("cart.realm").schemaVersion(0).deleteRealmIfMigrationNeeded().modules(new CartModule(), new Object[0]).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "RealmConfiguration.Build…e())\n            .build()");
        this.realmConfiguration = build;
    }

    public final io.realm.Realm getRealm() {
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.shop.CartStorage.getRealm():io.realm.Realm");
    }

    public final void save(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        try {
            getRealm().executeTransaction(new CartStorage$save$1(this, cartItem));
        } catch (Throwable th) {
            getRealm().close();
        }
        getRealm().close();
    }

    public final Observable<List<RealmCartItem>> readObservable() {
        Observable<List<RealmCartItem>> create = Observable.create(new CartStorage$readObservable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create {\n    …t.onCompleted()\n        }");
        return create;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<ru.rocketbank.core.realm.RealmCartItem> read() {
        /*
        r4 = this;
        r0 = 0;
        r1 = r4.getRealm();	 Catch:{ Throwable -> 0x0026 }
        r2 = ru.rocketbank.core.realm.RealmCartItem.class;
        r1 = r1.where(r2);	 Catch:{ Throwable -> 0x0026 }
        r1 = r1.findAll();	 Catch:{ Throwable -> 0x0026 }
        if (r1 == 0) goto L_0x001c;
    L_0x0011:
        r2 = r4.getRealm();	 Catch:{ Throwable -> 0x0026 }
        r1 = (java.lang.Iterable) r1;	 Catch:{ Throwable -> 0x0026 }
        r1 = r2.copyFromRealm(r1);	 Catch:{ Throwable -> 0x0026 }
        r0 = r1;
    L_0x001c:
        r1 = r4.getRealm();
        r1.close();
        return r0;
    L_0x0024:
        r0 = move-exception;
        goto L_0x0036;
    L_0x0026:
        r1 = move-exception;
        r2 = TAG;	 Catch:{ all -> 0x0024 }
        r3 = "failed to read storage";
        android.util.Log.e(r2, r3, r1);	 Catch:{ all -> 0x0024 }
        r1 = r4.getRealm();
        r1.close();
        return r0;
    L_0x0036:
        r1 = r4.getRealm();
        r1.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.shop.CartStorage.read():java.util.List<ru.rocketbank.core.realm.RealmCartItem>");
    }

    public final void delete(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        try {
            getRealm().executeTransaction(new CartStorage$delete$1(this, cartItem));
        } catch (Throwable th) {
            getRealm().close();
        }
        getRealm().close();
    }

    public final void clear() {
        try {
            getRealm().executeTransaction(new CartStorage$clear$1(this));
        } catch (Throwable th) {
            getRealm().close();
        }
        getRealm().close();
    }
}
