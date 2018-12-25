package ru.rocketbank.core.user.impl;

import io.realm.Realm;
import io.realm.Realm.Transaction;
import ru.rocketbank.core.realm.UserData;

/* compiled from: RealmAuthStorage.kt */
final class RealmAuthStorage$storeState$1 implements Transaction {
    final /* synthetic */ UserData $userData;
    final /* synthetic */ RealmAuthStorage this$0;

    RealmAuthStorage$storeState$1(RealmAuthStorage realmAuthStorage, UserData userData) {
        this.this$0 = realmAuthStorage;
        this.$userData = userData;
    }

    public final void execute(Realm realm) {
        this.this$0.getRealm().copyToRealmOrUpdate(this.$userData);
    }
}
