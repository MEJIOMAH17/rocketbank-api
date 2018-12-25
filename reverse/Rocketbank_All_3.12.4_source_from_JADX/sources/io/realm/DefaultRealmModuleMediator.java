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
import ru.rocketbank.core.manager.security.storage.TouchIdObject;
import ru.rocketbank.core.realm.DeviceInfoData;
import ru.rocketbank.core.realm.RealmAtm;
import ru.rocketbank.core.realm.RealmBin;
import ru.rocketbank.core.realm.RealmCartItem;
import ru.rocketbank.core.realm.RealmFriend;
import ru.rocketbank.core.realm.RealmImage;
import ru.rocketbank.core.realm.RealmLinkedCard;
import ru.rocketbank.core.realm.RealmMerchant;
import ru.rocketbank.core.realm.RealmMiles;
import ru.rocketbank.core.realm.RealmMoneyData;
import ru.rocketbank.core.realm.RealmOperation;
import ru.rocketbank.core.realm.RealmOperationCategory;
import ru.rocketbank.core.realm.RealmString;
import ru.rocketbank.core.realm.RealmWidgetFriend;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.realm.WidgetData;
import ru.rocketbank.core.realm.WidgetOperation;

@RealmModule
class DefaultRealmModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    public final boolean transformerApplied() {
        return true;
    }

    DefaultRealmModuleMediator() {
    }

    static {
        Set hashSet = new HashSet();
        hashSet.add(UserData.class);
        hashSet.add(WidgetData.class);
        hashSet.add(RealmOperationCategory.class);
        hashSet.add(DeviceInfoData.class);
        hashSet.add(WidgetOperation.class);
        hashSet.add(RealmBin.class);
        hashSet.add(RealmAtm.class);
        hashSet.add(RealmMiles.class);
        hashSet.add(RealmWidgetFriend.class);
        hashSet.add(RealmFriend.class);
        hashSet.add(RealmString.class);
        hashSet.add(RealmCartItem.class);
        hashSet.add(RealmOperation.class);
        hashSet.add(RealmLinkedCard.class);
        hashSet.add(TouchIdObject.class);
        hashSet.add(RealmMoneyData.class);
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
            } else if (cls.equals(UserData.class) != null) {
                r8 = (RealmModel) cls.cast(new UserDataRealmProxy());
                return r8;
            } else if (cls.equals(WidgetData.class) != null) {
                r8 = (RealmModel) cls.cast(new WidgetDataRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmOperationCategory.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmOperationCategoryRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(DeviceInfoData.class) != null) {
                r8 = (RealmModel) cls.cast(new DeviceInfoDataRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(WidgetOperation.class) != null) {
                r8 = (RealmModel) cls.cast(new WidgetOperationRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmBin.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmBinRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmAtm.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmAtmRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmMiles.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmMilesRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmWidgetFriend.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmWidgetFriendRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmFriend.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmFriendRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmString.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmStringRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmCartItem.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmCartItemRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmOperation.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmOperationRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmLinkedCard.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmLinkedCardRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(TouchIdObject.class) != null) {
                r8 = (RealmModel) cls.cast(new TouchIdObjectRealmProxy());
                realmObjectContext.clear();
                return r8;
            } else if (cls.equals(RealmMoneyData.class) != null) {
                r8 = (RealmModel) cls.cast(new RealmMoneyDataRealmProxy());
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
        Class superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(UserData.class)) {
            return (RealmModel) superclass.cast(UserDataRealmProxy.copyOrUpdate(realm, (UserData) e, z, map));
        }
        if (superclass.equals(WidgetData.class)) {
            return (RealmModel) superclass.cast(WidgetDataRealmProxy.copyOrUpdate(realm, (WidgetData) e, z, map));
        }
        if (superclass.equals(RealmOperationCategory.class)) {
            return (RealmModel) superclass.cast(RealmOperationCategoryRealmProxy.copyOrUpdate$3a139521(realm, (RealmOperationCategory) e, map));
        }
        if (superclass.equals(DeviceInfoData.class)) {
            return (RealmModel) superclass.cast(DeviceInfoDataRealmProxy.copyOrUpdate(realm, (DeviceInfoData) e, z, map));
        }
        if (superclass.equals(WidgetOperation.class)) {
            return (RealmModel) superclass.cast(WidgetOperationRealmProxy.copyOrUpdate$567ab907(realm, (WidgetOperation) e, map));
        }
        if (superclass.equals(RealmBin.class)) {
            return (RealmModel) superclass.cast(RealmBinRealmProxy.copyOrUpdate$2db7cbdb(realm, (RealmBin) e, map));
        }
        if (superclass.equals(RealmAtm.class)) {
            return (RealmModel) superclass.cast(RealmAtmRealmProxy.copyOrUpdate(realm, (RealmAtm) e, z, map));
        }
        if (superclass.equals(RealmMiles.class)) {
            return (RealmModel) superclass.cast(RealmMilesRealmProxy.copyOrUpdate$785b4813(realm, (RealmMiles) e, map));
        }
        if (superclass.equals(RealmWidgetFriend.class)) {
            return (RealmModel) superclass.cast(RealmWidgetFriendRealmProxy.copyOrUpdate$31980307(realm, (RealmWidgetFriend) e, map));
        }
        if (superclass.equals(RealmFriend.class)) {
            return (RealmModel) superclass.cast(RealmFriendRealmProxy.copyOrUpdate$55188d39(realm, (RealmFriend) e, map));
        }
        if (superclass.equals(RealmString.class)) {
            return (RealmModel) superclass.cast(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, (RealmString) e, map));
        }
        if (superclass.equals(RealmCartItem.class)) {
            return (RealmModel) superclass.cast(RealmCartItemRealmProxy.copyOrUpdate(realm, (RealmCartItem) e, z, map));
        }
        if (superclass.equals(RealmOperation.class)) {
            return (RealmModel) superclass.cast(RealmOperationRealmProxy.copyOrUpdate$1048dc1b(realm, (RealmOperation) e, map));
        }
        if (superclass.equals(RealmLinkedCard.class)) {
            return (RealmModel) superclass.cast(RealmLinkedCardRealmProxy.copyOrUpdate$76c565d9(realm, (RealmLinkedCard) e, map));
        }
        if (superclass.equals(TouchIdObject.class)) {
            return (RealmModel) superclass.cast(TouchIdObjectRealmProxy.copyOrUpdate(realm, (TouchIdObject) e, z, map));
        }
        if (superclass.equals(RealmMoneyData.class)) {
            return (RealmModel) superclass.cast(RealmMoneyDataRealmProxy.copyOrUpdate$47a39055(realm, (RealmMoneyData) e, map));
        }
        if (superclass.equals(RealmImage.class)) {
            return (RealmModel) superclass.cast(RealmImageRealmProxy.copyOrUpdate$2833b5cd(realm, (RealmImage) e, map));
        }
        if (superclass.equals(RealmMerchant.class)) {
            return (RealmModel) superclass.cast(RealmMerchantRealmProxy.copyOrUpdate$4c5ba239(realm, (RealmMerchant) e, map));
        }
        e = new StringBuilder();
        e.append(superclass);
        e.append(" is not part of the schema for this Realm.");
        throw new RealmException(e.toString());
    }

    public final <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        Class superclass = e.getClass().getSuperclass();
        if (superclass.equals(UserData.class)) {
            return (RealmModel) superclass.cast(UserDataRealmProxy.createDetachedCopy$6cf2b816((UserData) e, i, map));
        }
        if (superclass.equals(WidgetData.class)) {
            return (RealmModel) superclass.cast(WidgetDataRealmProxy.createDetachedCopy((WidgetData) e, 0, i, map));
        }
        if (superclass.equals(RealmOperationCategory.class)) {
            return (RealmModel) superclass.cast(RealmOperationCategoryRealmProxy.createDetachedCopy((RealmOperationCategory) e, 0, i, map));
        }
        if (superclass.equals(DeviceInfoData.class)) {
            return (RealmModel) superclass.cast(DeviceInfoDataRealmProxy.createDetachedCopy$1732f5ca((DeviceInfoData) e, i, map));
        }
        if (superclass.equals(WidgetOperation.class)) {
            return (RealmModel) superclass.cast(WidgetOperationRealmProxy.createDetachedCopy$170b45e8((WidgetOperation) e, i, map));
        }
        if (superclass.equals(RealmBin.class)) {
            return (RealmModel) superclass.cast(RealmBinRealmProxy.createDetachedCopy((RealmBin) e, 0, i, map));
        }
        if (superclass.equals(RealmAtm.class)) {
            return (RealmModel) superclass.cast(RealmAtmRealmProxy.createDetachedCopy$4fc3bdd6((RealmAtm) e, i, map));
        }
        if (superclass.equals(RealmMiles.class)) {
            return (RealmModel) superclass.cast(RealmMilesRealmProxy.createDetachedCopy((RealmMiles) e, 0, i, map));
        }
        if (superclass.equals(RealmWidgetFriend.class)) {
            return (RealmModel) superclass.cast(RealmWidgetFriendRealmProxy.createDetachedCopy((RealmWidgetFriend) e, 0, i, map));
        }
        if (superclass.equals(RealmFriend.class)) {
            return (RealmModel) superclass.cast(RealmFriendRealmProxy.createDetachedCopy((RealmFriend) e, 0, i, map));
        }
        if (superclass.equals(RealmString.class)) {
            return (RealmModel) superclass.cast(RealmStringRealmProxy.createDetachedCopy((RealmString) e, 0, i, map));
        }
        if (superclass.equals(RealmCartItem.class)) {
            return (RealmModel) superclass.cast(RealmCartItemRealmProxy.createDetachedCopy$1ce98c26((RealmCartItem) e, i, map));
        }
        if (superclass.equals(RealmOperation.class)) {
            return (RealmModel) superclass.cast(RealmOperationRealmProxy.createDetachedCopy((RealmOperation) e, 0, i, map));
        }
        if (superclass.equals(RealmLinkedCard.class)) {
            return (RealmModel) superclass.cast(RealmLinkedCardRealmProxy.createDetachedCopy((RealmLinkedCard) e, 0, i, map));
        }
        if (superclass.equals(TouchIdObject.class)) {
            return (RealmModel) superclass.cast(TouchIdObjectRealmProxy.createDetachedCopy$1b41600a((TouchIdObject) e, i, map));
        }
        if (superclass.equals(RealmMoneyData.class)) {
            return (RealmModel) superclass.cast(RealmMoneyDataRealmProxy.createDetachedCopy((RealmMoneyData) e, 0, i, map));
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
        } else if (cls.equals(UserData.class)) {
            return UserDataRealmProxy.createRealmObjectSchema(realmSchema);
        } else {
            if (cls.equals(WidgetData.class)) {
                return WidgetDataRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(DeviceInfoData.class)) {
                return DeviceInfoDataRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(WidgetOperation.class)) {
                return WidgetOperationRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmAtm.class)) {
                return RealmAtmRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmWidgetFriend.class)) {
                return RealmWidgetFriendRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmFriend.class)) {
                return RealmFriendRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmString.class)) {
                return RealmStringRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(TouchIdObject.class)) {
                return TouchIdObjectRealmProxy.createRealmObjectSchema(realmSchema);
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.createRealmObjectSchema(realmSchema);
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
        } else if (cls.equals(UserData.class)) {
            return UserDataRealmProxy.validateTable(sharedRealm, z);
        } else {
            if (cls.equals(WidgetData.class)) {
                return WidgetDataRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(DeviceInfoData.class)) {
                return DeviceInfoDataRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(WidgetOperation.class)) {
                return WidgetOperationRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmAtm.class)) {
                return RealmAtmRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmWidgetFriend.class)) {
                return RealmWidgetFriendRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmFriend.class)) {
                return RealmFriendRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmString.class)) {
                return RealmStringRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(TouchIdObject.class)) {
                return TouchIdObjectRealmProxy.validateTable(sharedRealm, z);
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.validateTable(sharedRealm, z);
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
        } else if (cls.equals(UserData.class)) {
            return UserDataRealmProxy.getTableName();
        } else {
            if (cls.equals(WidgetData.class)) {
                return WidgetDataRealmProxy.getTableName();
            }
            if (cls.equals(RealmOperationCategory.class)) {
                return RealmOperationCategoryRealmProxy.getTableName();
            }
            if (cls.equals(DeviceInfoData.class)) {
                return DeviceInfoDataRealmProxy.getTableName();
            }
            if (cls.equals(WidgetOperation.class)) {
                return WidgetOperationRealmProxy.getTableName();
            }
            if (cls.equals(RealmBin.class)) {
                return RealmBinRealmProxy.getTableName();
            }
            if (cls.equals(RealmAtm.class)) {
                return RealmAtmRealmProxy.getTableName();
            }
            if (cls.equals(RealmMiles.class)) {
                return RealmMilesRealmProxy.getTableName();
            }
            if (cls.equals(RealmWidgetFriend.class)) {
                return RealmWidgetFriendRealmProxy.getTableName();
            }
            if (cls.equals(RealmFriend.class)) {
                return RealmFriendRealmProxy.getTableName();
            }
            if (cls.equals(RealmString.class)) {
                return RealmStringRealmProxy.getTableName();
            }
            if (cls.equals(RealmCartItem.class)) {
                return RealmCartItemRealmProxy.getTableName();
            }
            if (cls.equals(RealmOperation.class)) {
                return RealmOperationRealmProxy.getTableName();
            }
            if (cls.equals(RealmLinkedCard.class)) {
                return RealmLinkedCardRealmProxy.getTableName();
            }
            if (cls.equals(TouchIdObject.class)) {
                return TouchIdObjectRealmProxy.getTableName();
            }
            if (cls.equals(RealmMoneyData.class)) {
                return RealmMoneyDataRealmProxy.getTableName();
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
