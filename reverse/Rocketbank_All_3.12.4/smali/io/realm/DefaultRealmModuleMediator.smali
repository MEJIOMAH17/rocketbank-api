.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lru/rocketbank/core/realm/UserData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lru/rocketbank/core/realm/WidgetData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lru/rocketbank/core/realm/RealmBin;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lru/rocketbank/core/realm/RealmAtm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v1, Lru/rocketbank/core/realm/RealmString;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v1, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v1, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v1, Lru/rocketbank/core/realm/RealmImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .line 371
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 373
    :goto_0
    const-class v1, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    check-cast p2, Lru/rocketbank/core/realm/UserData;

    invoke-static {p1, p2, p3, p4}, Lio/realm/UserDataRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/UserData;ZLjava/util/Map;)Lru/rocketbank/core/realm/UserData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 376
    :cond_1
    const-class v1, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    check-cast p2, Lru/rocketbank/core/realm/WidgetData;

    invoke-static {p1, p2, p3, p4}, Lio/realm/WidgetDataRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;ZLjava/util/Map;)Lru/rocketbank/core/realm/WidgetData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 379
    :cond_2
    const-class v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    check-cast p2, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-static {p1, p2, p4}, Lio/realm/RealmOperationCategoryRealmProxy;->copyOrUpdate$3a139521(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperationCategory;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 382
    :cond_3
    const-class v1, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    check-cast p2, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-static {p1, p2, p3, p4}, Lio/realm/DeviceInfoDataRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/DeviceInfoData;ZLjava/util/Map;)Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 385
    :cond_4
    const-class v1, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    check-cast p2, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-static {p1, p2, p4}, Lio/realm/WidgetOperationRealmProxy;->copyOrUpdate$567ab907(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetOperation;Ljava/util/Map;)Lru/rocketbank/core/realm/WidgetOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 388
    :cond_5
    const-class v1, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 389
    check-cast p2, Lru/rocketbank/core/realm/RealmBin;

    invoke-static {p1, p2, p4}, Lio/realm/RealmBinRealmProxy;->copyOrUpdate$2db7cbdb(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmBin;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmBin;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 391
    :cond_6
    const-class v1, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    check-cast p2, Lru/rocketbank/core/realm/RealmAtm;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmAtmRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmAtm;ZLjava/util/Map;)Lru/rocketbank/core/realm/RealmAtm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 394
    :cond_7
    const-class v1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 395
    check-cast p2, Lru/rocketbank/core/realm/RealmMiles;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMilesRealmProxy;->copyOrUpdate$785b4813(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMiles;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMiles;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 397
    :cond_8
    const-class v1, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 398
    check-cast p2, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {p1, p2, p4}, Lio/realm/RealmWidgetFriendRealmProxy;->copyOrUpdate$31980307(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmWidgetFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 400
    :cond_9
    const-class v1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 401
    check-cast p2, Lru/rocketbank/core/realm/RealmFriend;

    invoke-static {p1, p2, p4}, Lio/realm/RealmFriendRealmProxy;->copyOrUpdate$55188d39(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmFriend;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 403
    :cond_a
    const-class v1, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 404
    check-cast p2, Lru/rocketbank/core/realm/RealmString;

    invoke-static {p1, p2, p4}, Lio/realm/RealmStringRealmProxy;->copyOrUpdate$444f2c27(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmString;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 406
    :cond_b
    const-class v1, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 407
    check-cast p2, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmCartItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmCartItem;ZLjava/util/Map;)Lru/rocketbank/core/realm/RealmCartItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 409
    :cond_c
    const-class v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 410
    check-cast p2, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p1, p2, p4}, Lio/realm/RealmOperationRealmProxy;->copyOrUpdate$1048dc1b(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperation;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 412
    :cond_d
    const-class v1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 413
    check-cast p2, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-static {p1, p2, p4}, Lio/realm/RealmLinkedCardRealmProxy;->copyOrUpdate$76c565d9(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmLinkedCard;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmLinkedCard;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 415
    :cond_e
    const-class v1, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 416
    check-cast p2, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-static {p1, p2, p3, p4}, Lio/realm/TouchIdObjectRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/manager/security/storage/TouchIdObject;ZLjava/util/Map;)Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 418
    :cond_f
    const-class p3, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 419
    check-cast p2, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMoneyDataRealmProxy;->copyOrUpdate$47a39055(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMoneyData;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 421
    :cond_10
    const-class p3, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 422
    check-cast p2, Lru/rocketbank/core/realm/RealmImage;

    invoke-static {p1, p2, p4}, Lio/realm/RealmImageRealmProxy;->copyOrUpdate$2833b5cd(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmImage;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmImage;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 424
    :cond_11
    const-class p3, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 425
    check-cast p2, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMerchantRealmProxy;->copyOrUpdate$4c5ba239(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMerchant;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMerchant;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 5235
    :cond_12
    new-instance p1, Lio/realm/exceptions/RealmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not part of the schema for this Realm."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 427
    throw p1
.end method

.method public final createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 844
    const-class v1, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    check-cast p1, Lru/rocketbank/core/realm/UserData;

    invoke-static {p1, p2, p3}, Lio/realm/UserDataRealmProxy;->createDetachedCopy$6cf2b816(Lru/rocketbank/core/realm/UserData;ILjava/util/Map;)Lru/rocketbank/core/realm/UserData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 847
    :cond_0
    const-class v1, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 848
    check-cast p1, Lru/rocketbank/core/realm/WidgetData;

    invoke-static {p1, v2, p2, p3}, Lio/realm/WidgetDataRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/WidgetData;IILjava/util/Map;)Lru/rocketbank/core/realm/WidgetData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 850
    :cond_1
    const-class v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    check-cast p1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmOperationCategoryRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmOperationCategory;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 853
    :cond_2
    const-class v1, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 854
    check-cast p1, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-static {p1, p2, p3}, Lio/realm/DeviceInfoDataRealmProxy;->createDetachedCopy$1732f5ca(Lru/rocketbank/core/realm/DeviceInfoData;ILjava/util/Map;)Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 856
    :cond_3
    const-class v1, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 857
    check-cast p1, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-static {p1, p2, p3}, Lio/realm/WidgetOperationRealmProxy;->createDetachedCopy$170b45e8(Lru/rocketbank/core/realm/WidgetOperation;ILjava/util/Map;)Lru/rocketbank/core/realm/WidgetOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 859
    :cond_4
    const-class v1, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 860
    check-cast p1, Lru/rocketbank/core/realm/RealmBin;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmBinRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmBin;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmBin;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 862
    :cond_5
    const-class v1, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 863
    check-cast p1, Lru/rocketbank/core/realm/RealmAtm;

    invoke-static {p1, p2, p3}, Lio/realm/RealmAtmRealmProxy;->createDetachedCopy$4fc3bdd6(Lru/rocketbank/core/realm/RealmAtm;ILjava/util/Map;)Lru/rocketbank/core/realm/RealmAtm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 865
    :cond_6
    const-class v1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 866
    check-cast p1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMilesRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMiles;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMiles;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 868
    :cond_7
    const-class v1, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 869
    check-cast p1, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmWidgetFriendRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmWidgetFriend;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 871
    :cond_8
    const-class v1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 872
    check-cast p1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmFriendRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmFriend;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmFriend;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 874
    :cond_9
    const-class v1, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 875
    check-cast p1, Lru/rocketbank/core/realm/RealmString;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmStringRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmString;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 877
    :cond_a
    const-class v1, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 878
    check-cast p1, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-static {p1, p2, p3}, Lio/realm/RealmCartItemRealmProxy;->createDetachedCopy$1ce98c26(Lru/rocketbank/core/realm/RealmCartItem;ILjava/util/Map;)Lru/rocketbank/core/realm/RealmCartItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 880
    :cond_b
    const-class v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 881
    check-cast p1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmOperationRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmOperation;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 883
    :cond_c
    const-class v1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 884
    check-cast p1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmLinkedCardRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmLinkedCard;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmLinkedCard;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 886
    :cond_d
    const-class v1, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 887
    check-cast p1, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-static {p1, p2, p3}, Lio/realm/TouchIdObjectRealmProxy;->createDetachedCopy$1b41600a(Lru/rocketbank/core/manager/security/storage/TouchIdObject;ILjava/util/Map;)Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 889
    :cond_e
    const-class v1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 890
    check-cast p1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMoneyDataRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMoneyData;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 892
    :cond_f
    const-class v1, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 893
    check-cast p1, Lru/rocketbank/core/realm/RealmImage;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmImageRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmImage;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmImage;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 895
    :cond_10
    const-class v1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 896
    check-cast p1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMerchantRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMerchant;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMerchant;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6235
    :cond_11
    new-instance p1, Lio/realm/exceptions/RealmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not part of the schema for this Realm."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 898
    throw p1
.end method

.method public final createRealmObjectSchema(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/RealmSchema;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1230
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "A class extending RealmObject must be provided"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p2}, Lio/realm/UserDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p2}, Lio/realm/WidgetDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-static {p2}, Lio/realm/RealmOperationCategoryRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 64
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-static {p2}, Lio/realm/DeviceInfoDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 67
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    invoke-static {p2}, Lio/realm/WidgetOperationRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 70
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    invoke-static {p2}, Lio/realm/RealmBinRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 73
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    invoke-static {p2}, Lio/realm/RealmAtmRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 76
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    invoke-static {p2}, Lio/realm/RealmMilesRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 79
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    invoke-static {p2}, Lio/realm/RealmWidgetFriendRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 82
    :cond_9
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    invoke-static {p2}, Lio/realm/RealmFriendRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 85
    :cond_a
    const-class v0, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    invoke-static {p2}, Lio/realm/RealmStringRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 88
    :cond_b
    const-class v0, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    invoke-static {p2}, Lio/realm/RealmCartItemRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 91
    :cond_c
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 92
    invoke-static {p2}, Lio/realm/RealmOperationRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 94
    :cond_d
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    invoke-static {p2}, Lio/realm/RealmLinkedCardRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 97
    :cond_e
    const-class v0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    invoke-static {p2}, Lio/realm/TouchIdObjectRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 100
    :cond_f
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 101
    invoke-static {p2}, Lio/realm/RealmMoneyDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 103
    :cond_10
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 104
    invoke-static {p2}, Lio/realm/RealmImageRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 106
    :cond_11
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 107
    invoke-static {p2}, Lio/realm/RealmMerchantRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 1235
    :cond_12
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p2
.end method

.method public final getModelClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .line 364
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public final getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3230
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A class extending RealmObject must be provided"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {}, Lio/realm/UserDataRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-static {}, Lio/realm/WidgetDataRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 244
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-static {}, Lio/realm/RealmOperationCategoryRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    invoke-static {}, Lio/realm/DeviceInfoDataRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 250
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    invoke-static {}, Lio/realm/WidgetOperationRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    invoke-static {}, Lio/realm/RealmBinRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    invoke-static {}, Lio/realm/RealmAtmRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 260
    invoke-static {}, Lio/realm/RealmMilesRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 262
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    invoke-static {}, Lio/realm/RealmWidgetFriendRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 265
    :cond_9
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 266
    invoke-static {}, Lio/realm/RealmFriendRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 268
    :cond_a
    const-class v0, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    invoke-static {}, Lio/realm/RealmStringRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 271
    :cond_b
    const-class v0, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 272
    invoke-static {}, Lio/realm/RealmCartItemRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 274
    :cond_c
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 275
    invoke-static {}, Lio/realm/RealmOperationRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_d
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    invoke-static {}, Lio/realm/RealmLinkedCardRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 280
    :cond_e
    const-class v0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    invoke-static {}, Lio/realm/TouchIdObjectRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :cond_f
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 284
    invoke-static {}, Lio/realm/RealmMoneyDataRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 286
    :cond_10
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 287
    invoke-static {}, Lio/realm/RealmImageRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 289
    :cond_11
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 290
    invoke-static {}, Lio/realm/RealmMerchantRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3235
    :cond_12
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 292
    throw v0
.end method

.method public final newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 297
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 299
    :try_start_0
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    if-nez p1, :cond_0

    .line 4230
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "A class extending RealmObject must be provided"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_0
    const-class p2, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 303
    new-instance p2, Lio/realm/UserDataRealmProxy;

    invoke-direct {p2}, Lio/realm/UserDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 305
    :cond_1
    :try_start_1
    const-class p2, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 306
    new-instance p2, Lio/realm/WidgetDataRealmProxy;

    invoke-direct {p2}, Lio/realm/WidgetDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 308
    :cond_2
    :try_start_2
    const-class p2, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 309
    new-instance p2, Lio/realm/RealmOperationCategoryRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmOperationCategoryRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 311
    :cond_3
    :try_start_3
    const-class p2, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 312
    new-instance p2, Lio/realm/DeviceInfoDataRealmProxy;

    invoke-direct {p2}, Lio/realm/DeviceInfoDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 314
    :cond_4
    :try_start_4
    const-class p2, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 315
    new-instance p2, Lio/realm/WidgetOperationRealmProxy;

    invoke-direct {p2}, Lio/realm/WidgetOperationRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 317
    :cond_5
    :try_start_5
    const-class p2, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 318
    new-instance p2, Lio/realm/RealmBinRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmBinRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 320
    :cond_6
    :try_start_6
    const-class p2, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 321
    new-instance p2, Lio/realm/RealmAtmRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmAtmRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 323
    :cond_7
    :try_start_7
    const-class p2, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 324
    new-instance p2, Lio/realm/RealmMilesRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMilesRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 326
    :cond_8
    :try_start_8
    const-class p2, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 327
    new-instance p2, Lio/realm/RealmWidgetFriendRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmWidgetFriendRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 329
    :cond_9
    :try_start_9
    const-class p2, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 330
    new-instance p2, Lio/realm/RealmFriendRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmFriendRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 332
    :cond_a
    :try_start_a
    const-class p2, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 333
    new-instance p2, Lio/realm/RealmStringRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmStringRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 335
    :cond_b
    :try_start_b
    const-class p2, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 336
    new-instance p2, Lio/realm/RealmCartItemRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmCartItemRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 338
    :cond_c
    :try_start_c
    const-class p2, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 339
    new-instance p2, Lio/realm/RealmOperationRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmOperationRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 341
    :cond_d
    :try_start_d
    const-class p2, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 342
    new-instance p2, Lio/realm/RealmLinkedCardRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmLinkedCardRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 344
    :cond_e
    :try_start_e
    const-class p2, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 345
    new-instance p2, Lio/realm/TouchIdObjectRealmProxy;

    invoke-direct {p2}, Lio/realm/TouchIdObjectRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 347
    :cond_f
    :try_start_f
    const-class p2, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 348
    new-instance p2, Lio/realm/RealmMoneyDataRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMoneyDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 350
    :cond_10
    :try_start_10
    const-class p2, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 351
    new-instance p2, Lio/realm/RealmImageRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmImageRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 353
    :cond_11
    :try_start_11
    const-class p2, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 354
    new-instance p2, Lio/realm/RealmMerchantRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMerchantRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 4235
    :cond_12
    :try_start_12
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 356
    throw p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_0
    move-exception p1

    .line 358
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p1
.end method

.method public final transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            "Z)",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2230
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "A class extending RealmObject must be provided"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p2, p3}, Lio/realm/UserDataRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/UserDataRealmProxy$UserDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 119
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-static {p2, p3}, Lio/realm/WidgetDataRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 122
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-static {p2, p3}, Lio/realm/RealmOperationCategoryRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-static {p2, p3}, Lio/realm/DeviceInfoDataRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/DeviceInfoDataRealmProxy$DeviceInfoDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 128
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/WidgetOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-static {p2, p3}, Lio/realm/WidgetOperationRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;

    move-result-object p1

    return-object p1

    .line 131
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    invoke-static {p2, p3}, Lio/realm/RealmBinRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;

    move-result-object p1

    return-object p1

    .line 134
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    invoke-static {p2, p3}, Lio/realm/RealmAtmRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    move-result-object p1

    return-object p1

    .line 137
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-static {p2, p3}, Lio/realm/RealmMilesRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;

    move-result-object p1

    return-object p1

    .line 140
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-static {p2, p3}, Lio/realm/RealmWidgetFriendRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    move-result-object p1

    return-object p1

    .line 143
    :cond_9
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-static {p2, p3}, Lio/realm/RealmFriendRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;

    move-result-object p1

    return-object p1

    .line 146
    :cond_a
    const-class v0, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    invoke-static {p2, p3}, Lio/realm/RealmStringRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    move-result-object p1

    return-object p1

    .line 149
    :cond_b
    const-class v0, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 150
    invoke-static {p2, p3}, Lio/realm/RealmCartItemRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmCartItemRealmProxy$RealmCartItemColumnInfo;

    move-result-object p1

    return-object p1

    .line 152
    :cond_c
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    invoke-static {p2, p3}, Lio/realm/RealmOperationRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;

    move-result-object p1

    return-object p1

    .line 155
    :cond_d
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 156
    invoke-static {p2, p3}, Lio/realm/RealmLinkedCardRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;

    move-result-object p1

    return-object p1

    .line 158
    :cond_e
    const-class v0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 159
    invoke-static {p2, p3}, Lio/realm/TouchIdObjectRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/TouchIdObjectRealmProxy$TouchIdObjectColumnInfo;

    move-result-object p1

    return-object p1

    .line 161
    :cond_f
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    invoke-static {p2, p3}, Lio/realm/RealmMoneyDataRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 164
    :cond_10
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    invoke-static {p2, p3}, Lio/realm/RealmImageRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;

    move-result-object p1

    return-object p1

    .line 167
    :cond_11
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 168
    invoke-static {p2, p3}, Lio/realm/RealmMerchantRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMerchantRealmProxy$RealmMerchantColumnInfo;

    move-result-object p1

    return-object p1

    .line 2235
    :cond_12
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p2
.end method
