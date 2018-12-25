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
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class FilterableMediator extends RealmProxyMediator {
    private final Set<Class<? extends RealmModel>> allowedClasses;
    private final RealmProxyMediator originalMediator;

    public FilterableMediator(RealmProxyMediator realmProxyMediator, Collection<Class<? extends RealmModel>> collection) {
        this.originalMediator = realmProxyMediator;
        Set hashSet = new HashSet();
        if (realmProxyMediator != null) {
            realmProxyMediator = realmProxyMediator.getModelClasses();
            for (Class cls : collection) {
                if (realmProxyMediator.contains(cls)) {
                    hashSet.add(cls);
                }
            }
        }
        this.allowedClasses = Collections.unmodifiableSet(hashSet);
    }

    public final RealmObjectSchema createRealmObjectSchema(Class<? extends RealmModel> cls, RealmSchema realmSchema) {
        checkSchemaHasClass(cls);
        return this.originalMediator.createRealmObjectSchema(cls, realmSchema);
    }

    public final ColumnInfo validateTable(Class<? extends RealmModel> cls, SharedRealm sharedRealm, boolean z) {
        checkSchemaHasClass(cls);
        return this.originalMediator.validateTable(cls, sharedRealm, z);
    }

    public final String getTableName(Class<? extends RealmModel> cls) {
        checkSchemaHasClass(cls);
        return this.originalMediator.getTableName(cls);
    }

    public final <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        checkSchemaHasClass(cls);
        return this.originalMediator.newInstance(cls, obj, row, columnInfo, z, list);
    }

    public final Set<Class<? extends RealmModel>> getModelClasses() {
        return this.allowedClasses;
    }

    public final <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        checkSchemaHasClass(Util.getOriginalModelClass(e.getClass()));
        return this.originalMediator.copyOrUpdate(realm, e, z, map);
    }

    public final <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        checkSchemaHasClass(Util.getOriginalModelClass(e.getClass()));
        return this.originalMediator.createDetachedCopy(e, i, map);
    }

    public final boolean transformerApplied() {
        if (this.originalMediator == null) {
            return true;
        }
        return this.originalMediator.transformerApplied();
    }

    private void checkSchemaHasClass(Class<? extends RealmModel> cls) {
        if (!this.allowedClasses.contains(cls)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(cls.getSimpleName());
            stringBuilder.append(" is not part of the schema for this Realm");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }
}
