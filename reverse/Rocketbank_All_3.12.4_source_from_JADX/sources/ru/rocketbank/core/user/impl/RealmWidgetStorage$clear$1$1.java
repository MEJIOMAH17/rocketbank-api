package ru.rocketbank.core.user.impl;

import io.realm.Realm;
import io.realm.Realm.Transaction;

/* compiled from: RealmWidgetStorage.kt */
final class RealmWidgetStorage$clear$1$1 implements Transaction {
    final /* synthetic */ Realm $realm;

    RealmWidgetStorage$clear$1$1(Realm realm) {
        this.$realm = realm;
    }

    public final void execute(Realm realm) {
        this.$realm.deleteAll();
    }
}
