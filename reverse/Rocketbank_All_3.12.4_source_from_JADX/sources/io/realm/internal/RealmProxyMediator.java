package io.realm.internal;

import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.RealmObjectSchema;
import io.realm.RealmSchema;
import io.realm.internal.RealmObjectProxy.CacheData;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class RealmProxyMediator {
    public abstract <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map);

    public abstract <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map);

    public abstract RealmObjectSchema createRealmObjectSchema(Class<? extends RealmModel> cls, RealmSchema realmSchema);

    public abstract Set<Class<? extends RealmModel>> getModelClasses();

    public abstract String getTableName(Class<? extends RealmModel> cls);

    public abstract <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list);

    public boolean transformerApplied() {
        return false;
    }

    public abstract ColumnInfo validateTable(Class<? extends RealmModel> cls, SharedRealm sharedRealm, boolean z);

    public boolean equals(Object obj) {
        if (!(obj instanceof RealmProxyMediator)) {
            return null;
        }
        return getModelClasses().equals(((RealmProxyMediator) obj).getModelClasses());
    }

    public int hashCode() {
        return getModelClasses().hashCode();
    }
}
