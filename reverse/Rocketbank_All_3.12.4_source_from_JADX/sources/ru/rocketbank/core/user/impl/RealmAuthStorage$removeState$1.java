package ru.rocketbank.core.user.impl;

import io.realm.Realm;
import io.realm.Realm.Transaction;

/* compiled from: RealmAuthStorage.kt */
final class RealmAuthStorage$removeState$1 implements Transaction {
    final /* synthetic */ RealmAuthStorage this$0;

    RealmAuthStorage$removeState$1(RealmAuthStorage realmAuthStorage) {
        this.this$0 = realmAuthStorage;
    }

    public final void execute(Realm realm) {
        this.this$0.getRealm().deleteAll();
    }
}
