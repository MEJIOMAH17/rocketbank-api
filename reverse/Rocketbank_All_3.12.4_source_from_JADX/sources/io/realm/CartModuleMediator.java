package io.realm;

import io.realm.BaseRealm.RealmObjectContext;
import io.realm.annotations.RealmModule;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmObjectProxy.CacheData;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.SharedRealm;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import ru.rocketbank.core.realm.RealmCartItem;
import ru.rocketbank.core.realm.RealmString;

@RealmModule
class CartModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    public final boolean transformerApplied() {
        return true;
    }

    CartModuleMediator() {
    }

    static {
        Set hashSet = new HashSet();
        hashSet.add(RealmString.class);
        hashSet.add(RealmCartItem.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    public final <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            if (cls == null) {
                throw new NullPointerException("A class extending RealmObject must be provided");
            } else if (cls.equals(RealmString.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmStringRealmProxy());
                return r8;
            } else if (cls.equals(RealmCartItem.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmCartItemRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else {
                row = new StringBuilder();
                row.append(cls);
                row.append(" is not part of the schema for this Realm.");
                throw new RealmException(row.toString());
            }
        } finally {
            realmObjectContext.clear();
        }
    }

    public final Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    public final <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        Class superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(RealmString.class)) {
            return (RealmModel) superclass.cast(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, (RealmString) e, map));
        }
        if (superclass.equals(RealmCartItem.class)) {
            return (RealmModel) superclass.cast(RealmCartItemRealmProxy.copyOrUpdate(realm, (RealmCartItem) e, z, map));
        }
        e = new StringBuilder();
        e.append(superclass);
        e.append(" is not part of the schema for this Realm.");
        throw new RealmException(e.toString());
    }

    public final <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        Class superclass = e.getClass().getSuperclass();
        if (superclass.equals(RealmString.class)) {
            return (RealmModel) superclass.cast(RealmStringRealmProxy.createDetachedCopy((RealmString) e, 0, i, map));
        }
        if (superclass.equals(RealmCartItem.class)) {
            return (RealmModel) superclass.cast(RealmCartItemRealmProxy.createDetachedCopy$1ce98c26((RealmCartItem) e, i, map));
        }
        i = new StringBuilder();
        i.append(superclass);
        i.append(" is not part of the schema for this Realm.");
        throw new RealmException(i.toString());
    }

    public final RealmObjectSchema createRealmObjectSchema(Class<? extends RealmModel> cls, RealmSchema realmSchema) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        } else if (cls.equals(RealmString.class)) {
            return RealmStringRealmProxy.createRealmObjectSchema(realmSchema);
        } else {
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.createRealmObjectSchema(realmSchema);
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(cls);
            stringBuilder.append(" is not part of the schema for this Realm.");
            throw new RealmException(stringBuilder.toString());
        }
    }

    public final ColumnInfo validateTable(Class<? extends RealmModel> cls, SharedRealm sharedRealm, boolean z) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        } else if (cls.equals(RealmString.class)) {
            return RealmStringRealmProxy.validateTable(sharedRealm, z);
        } else {
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.validateTable(sharedRealm, z);
            }
            z = new StringBuilder();
            z.append(cls);
            z.append(" is not part of the schema for this Realm.");
            throw new RealmException(z.toString());
        }
    }

    public final String getTableName(Class<? extends RealmModel> cls) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        } else if (cls.equals(RealmString.class)) {
            return RealmStringRealmProxy.getTableName();
        } else {
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.getTableName();
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(cls);
            stringBuilder.append(" is not part of the schema for this Realm.");
            throw new RealmException(stringBuilder.toString());
        }
    }
}
