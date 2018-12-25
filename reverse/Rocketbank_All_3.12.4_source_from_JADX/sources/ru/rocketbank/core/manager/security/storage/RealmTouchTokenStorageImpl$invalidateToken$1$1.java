package ru.rocketbank.core.manager.security.storage;

import io.realm.Realm;
import io.realm.Realm.Transaction;

/* compiled from: RealmTouchTokenStorageImpl.kt */
final class RealmTouchTokenStorageImpl$invalidateToken$1$1 implements Transaction {
    final /* synthetic */ Realm $realm;

    RealmTouchTokenStorageImpl$invalidateToken$1$1(Realm realm) {
        this.$realm = realm;
    }

    public final void execute(Realm realm) {
        this.$realm.delete(TouchIdObject.class);
    }
}
