package io.realm.rx;

import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.RealmResults;
import rx.Observable;

public interface RxObservableFactory {
    Observable<RealmResults<DynamicRealmObject>> from(DynamicRealm dynamicRealm, RealmResults<DynamicRealmObject> realmResults);

    <E extends RealmModel> Observable<RealmResults<E>> from(Realm realm, RealmResults<E> realmResults);
}
