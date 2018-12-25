package io.realm;

import io.realm.internal.ObserverPairList;
import io.realm.internal.ObserverPairList.Callback;
import io.realm.internal.ObserverPairList.ObserverPair;
import io.realm.internal.Row;
import java.util.List;

public final class ProxyState<E extends RealmModel> {
    private static QueryCallback queryCallback = new QueryCallback();
    private boolean acceptDefaultValue;
    private List<String> excludeFields;
    private E model;
    private ObserverPairList<Object> observerPairs = new ObserverPairList();
    private BaseRealm realm;
    private Row row;
    private boolean underConstruction = true;

    static class QueryCallback implements Callback<Object> {
        public final /* bridge */ /* synthetic */ void onCalled(ObserverPair observerPair, Object obj) {
        }

        private QueryCallback() {
        }
    }

    public ProxyState(E e) {
        this.model = e;
    }

    public final BaseRealm getRealm$realm() {
        return this.realm;
    }

    public final void setRealm$realm(BaseRealm baseRealm) {
        this.realm = baseRealm;
    }

    public final Row getRow$realm() {
        return this.row;
    }

    public final void setRow$realm(Row row) {
        this.row = row;
    }

    public final boolean getAcceptDefaultValue$realm() {
        return this.acceptDefaultValue;
    }

    public final void setAcceptDefaultValue$realm(boolean z) {
        this.acceptDefaultValue = z;
    }

    public final List<String> getExcludeFields$realm() {
        return this.excludeFields;
    }

    public final void setExcludeFields$realm(List<String> list) {
        this.excludeFields = list;
    }

    public final boolean isUnderConstruction() {
        return this.underConstruction;
    }

    public final void setConstructionFinished() {
        this.underConstruction = false;
        this.excludeFields = null;
    }
}
