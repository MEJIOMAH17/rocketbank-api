package io.realm.internal.modules;

import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.RealmObjectSchema;
import io.realm.RealmSchema;
import io.realm.internal.ColumnInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmObjectProxy.CacheData;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.SharedRealm;
import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class CompositeMediator extends RealmProxyMediator {
    private final Map<Class<? extends RealmModel>, RealmProxyMediator> mediators;

    public CompositeMediator(RealmProxyMediator... realmProxyMediatorArr) {
        Map hashMap = new HashMap();
        for (RealmProxyMediator realmProxyMediator : realmProxyMediatorArr) {
            for (Class put : realmProxyMediator.getModelClasses()) {
                hashMap.put(put, realmProxyMediator);
            }
        }
        this.mediators = Collections.unmodifiableMap(hashMap);
    }

    public final RealmObjectSchema createRealmObjectSchema(Class<? extends RealmModel> cls, RealmSchema realmSchema) {
        return getMediator(cls).createRealmObjectSchema(cls, realmSchema);
    }

    public final ColumnInfo validateTable(Class<? extends RealmModel> cls, SharedRealm sharedRealm, boolean z) {
        return getMediator(cls).validateTable(cls, sharedRealm, z);
    }

    public final String getTableName(Class<? extends RealmModel> cls) {
        return getMediator(cls).getTableName(cls);
    }

    public final <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        return getMediator(cls).newInstance(cls, obj, row, columnInfo, z, list);
    }

    public final Set<Class<? extends RealmModel>> getModelClasses() {
        return this.mediators.keySet();
    }

    public final <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        return getMediator(Util.getOriginalModelClass(e.getClass())).copyOrUpdate(realm, e, z, map);
    }

    public final <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        return getMediator(Util.getOriginalModelClass(e.getClass())).createDetachedCopy(e, i, map);
    }

    public final boolean transformerApplied() {
        for (Entry value : this.mediators.entrySet()) {
            if (!((RealmProxyMediator) value.getValue()).transformerApplied()) {
                return false;
            }
        }
        return true;
    }

    private RealmProxyMediator getMediator(Class<? extends RealmModel> cls) {
        RealmProxyMediator realmProxyMediator = (RealmProxyMediator) this.mediators.get(cls);
        if (realmProxyMediator != null) {
            return realmProxyMediator;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(cls.getSimpleName());
        stringBuilder.append(" is not part of the schema for this Realm");
        throw new IllegalArgumentException(stringBuilder.toString());
    }
}
