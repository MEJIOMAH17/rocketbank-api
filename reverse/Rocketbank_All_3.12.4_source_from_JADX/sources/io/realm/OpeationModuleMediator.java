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
import ru.rocketbank.core.realm.RealmBin;
import ru.rocketbank.core.realm.RealmFriend;
import ru.rocketbank.core.realm.RealmImage;
import ru.rocketbank.core.realm.RealmLinkedCard;
import ru.rocketbank.core.realm.RealmMerchant;
import ru.rocketbank.core.realm.RealmMiles;
import ru.rocketbank.core.realm.RealmMoneyData;
import ru.rocketbank.core.realm.RealmOperation;
import ru.rocketbank.core.realm.RealmOperationCategory;

@RealmModule
class OpeationModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    public final boolean transformerApplied() {
        return true;
    }

    OpeationModuleMediator() {
    }

    static {
        Set hashSet = new HashSet();
        hashSet.add(RealmFriend.class);
        hashSet.add(RealmOperationCategory.class);
        hashSet.add(RealmBin.class);
        hashSet.add(RealmLinkedCard.class);
        hashSet.add(RealmOperation.class);
        hashSet.add(RealmMoneyData.class);
        hashSet.add(RealmMiles.class);
        hashSet.add(RealmImage.class);
        hashSet.add(RealmMerchant.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    public final <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            if (cls == null) {
                throw new NullPointerException("A class extending RealmObject must be provided");
            } else if (cls.equals(RealmFriend.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmFriendRealmProxy());
                return r8;
            } else if (cls.equals(RealmOperationCategory.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmOperationCategoryRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmBin.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmBinRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmLinkedCard.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmLinkedCardRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmOperation.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmOperationRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmMoneyData.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmMoneyDataRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmMiles.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmMilesRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmImage.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmImageRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmMerchant.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmMerchantRealmProxy());
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
        z = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (z.equals(RealmFriend.class)) {
            return (RealmModel) z.cast(RealmFriendRealmProxy.copyOrUpdate$55188d39(realm, (RealmFriend) e, map));
        }
        if (z.equals(RealmOperationCategory.class)) {
            return (RealmModel) z.cast(RealmOperationCategoryRealmProxy.copyOrUpdate$3a139521(realm, (RealmOperationCategory) e, map));
        }
        if (z.equals(RealmBin.class)) {
            return (RealmModel) z.cast(RealmBinRealmProxy.copyOrUpdate$2db7cbdb(realm, (RealmBin) e, map));
        }
        if (z.equals(RealmLinkedCard.class)) {
            return (RealmModel) z.cast(RealmLinkedCardRealmProxy.copyOrUpdate$76c565d9(realm, (RealmLinkedCard) e, map));
        }
        if (z.equals(RealmOperation.class)) {
            return (RealmModel) z.cast(RealmOperationRealmProxy.copyOrUpdate$1048dc1b(realm, (RealmOperation) e, map));
        }
        if (z.equals(RealmMoneyData.class)) {
            return (RealmModel) z.cast(RealmMoneyDataRealmProxy.copyOrUpdate$47a39055(realm, (RealmMoneyData) e, map));
        }
        if (z.equals(RealmMiles.class)) {
            return (RealmModel) z.cast(RealmMilesRealmProxy.copyOrUpdate$785b4813(realm, (RealmMiles) e, map));
        }
        if (z.equals(RealmImage.class)) {
            return (RealmModel) z.cast(RealmImageRealmProxy.copyOrUpdate$2833b5cd(realm, (RealmImage) e, map));
        }
        if (z.equals(RealmMerchant.class)) {
            return (RealmModel) z.cast(RealmMerchantRealmProxy.copyOrUpdate$4c5ba239(realm, (RealmMerchant) e, map));
        }
        e = new StringBuilder();
        e.append(z);
        e.append(" is not part of the schema for this Realm.");
        throw new RealmException(e.toString());
    }

    public final <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        Class superclass = e.getClass().getSuperclass();
        if (superclass.equals(RealmFriend.class)) {
            return (RealmModel) superclass.cast(RealmFriendRealmProxy.createDetachedCopy((RealmFriend) e, 0, i, map));
        }
        if (superclass.equals(RealmOperationCategory.class)) {
            return (RealmModel) superclass.cast(RealmOperationCategoryRealmProxy.createDetachedCopy((RealmOperationCategory) e, 0, i, map));
        }
        if (superclass.equals(RealmBin.class)) {
            return (RealmModel) superclass.cast(RealmBinRealmProxy.createDetachedCopy((RealmBin) e, 0, i, map));
        }
        if (superclass.equals(RealmLinkedCard.class)) {
            return (RealmModel) superclass.cast(RealmLinkedCardRealmProxy.createDetachedCopy((RealmLinkedCard) e, 0, i, map));
        }
        if (superclass.equals(RealmOperation.class)) {
            return (RealmModel) superclass.cast(RealmOperationRealmProxy.createDetachedCopy((RealmOperation) e, 0, i, map));
        }
        if (superclass.equals(RealmMoneyData.class)) {
            return (RealmModel) superclass.cast(RealmMoneyDataRealmProxy.createDetachedCopy((RealmMoneyData) e, 0, i, map));
        }
        if (superclass.equals(RealmMiles.class)) {
            return (RealmModel) superclass.cast(RealmMilesRealmProxy.createDetachedCopy((RealmMiles) e, 0, i, map));
        }
        if (superclass.equals(RealmImage.class)) {
            return (RealmModel) superclass.cast(RealmImageRealmProxy.createDetachedCopy((RealmImage) e, 0, i, map));
        }
        if (superclass.equals(RealmMerchant.class)) {
            return (RealmModel) superclass.cast(RealmMerchantRealmProxy.createDetachedCopy((RealmMerchant) e, 0, i, map));
        }
        i = new StringBuilder();
        i.append(superclass);
        i.append(" is not part of the schema for this Realm.");
        throw new RealmException(i.toString());
    }

    public final RealmObjectSchema createRealmObjectSchema(Class<? extends RealmModel> cls, RealmSchema realmSchema) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        } else if (cls.equals(RealmFriend.class)) {
            return RealmFriendRealmProxy.createRealmObjectSchema(realmSchema);
        } else {
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmImage.class)) {
                return RealmImageRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmMerchant.class)) {
                return RealmMerchantRealmProxy.createRealmObjectSchema(realmSchema);
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
        } else if (cls.equals(RealmFriend.class)) {
            return RealmFriendRealmProxy.validateTable(sharedRealm, z);
        } else {
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmImage.class)) {
                return RealmImageRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmMerchant.class)) {
                return RealmMerchantRealmProxy.validateTable(sharedRealm, z);
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
        } else if (cls.equals(RealmFriend.class)) {
            return RealmFriendRealmProxy.getTableName();
        } else {
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.getTableName();
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.getTableName();
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.getTableName();
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.getTableName();
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.getTableName();
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.getTableName();
            }
            if (cls.equals(RealmImage.class)) {
                return RealmImageRealmProxy.getTableName();
            }
            if (cls.equals(RealmMerchant.class)) {
                return RealmMerchantRealmProxy.getTableName();
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(cls);
            stringBuilder.append(" is not part of the schema for this Realm.");
            throw new RealmException(stringBuilder.toString());
        }
    }
}
