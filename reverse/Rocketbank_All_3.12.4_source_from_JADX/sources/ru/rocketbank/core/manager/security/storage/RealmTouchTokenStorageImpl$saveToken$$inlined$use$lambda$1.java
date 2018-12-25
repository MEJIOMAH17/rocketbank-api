package ru.rocketbank.core.manager.security.storage;

import android.util.Log;
import io.realm.Realm;
import io.realm.Realm.Transaction;

/* compiled from: RealmTouchTokenStorageImpl.kt */
final class RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1 implements Transaction {
    final /* synthetic */ Realm $realm;
    final /* synthetic */ TouchIdObject $tokenObject$inlined;

    RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1(Realm realm, TouchIdObject touchIdObject) {
        this.$realm = realm;
        this.$tokenObject$inlined = touchIdObject;
    }

    public final void execute(Realm realm) {
        this.$realm.copyToRealmOrUpdate(this.$tokenObject$inlined);
        Log.v("RealmTouchTokenStorage", "token saved");
    }
}
