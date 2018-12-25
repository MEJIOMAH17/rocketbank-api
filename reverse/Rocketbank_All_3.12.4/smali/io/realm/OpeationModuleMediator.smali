.class Lio/realm/OpeationModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "OpeationModuleMediator.java"


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
    const-class v1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lru/rocketbank/core/realm/RealmBin;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lru/rocketbank/core/realm/RealmImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/OpeationModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

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
    .locals 1
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

    .line 227
    instance-of p3, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 229
    :goto_0
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    check-cast p2, Lru/rocketbank/core/realm/RealmFriend;

    invoke-static {p1, p2, p4}, Lio/realm/RealmFriendRealmProxy;->copyOrUpdate$55188d39(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmFriend;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 232
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    check-cast p2, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-static {p1, p2, p4}, Lio/realm/RealmOperationCategoryRealmProxy;->copyOrUpdate$3a139521(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperationCategory;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 235
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    check-cast p2, Lru/rocketbank/core/realm/RealmBin;

    invoke-static {p1, p2, p4}, Lio/realm/RealmBinRealmProxy;->copyOrUpdate$2db7cbdb(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmBin;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmBin;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 238
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    check-cast p2, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-static {p1, p2, p4}, Lio/realm/RealmLinkedCardRealmProxy;->copyOrUpdate$76c565d9(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmLinkedCard;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmLinkedCard;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 241
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    check-cast p2, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p1, p2, p4}, Lio/realm/RealmOperationRealmProxy;->copyOrUpdate$1048dc1b(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperation;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 244
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    check-cast p2, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMoneyDataRealmProxy;->copyOrUpdate$47a39055(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMoneyData;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 247
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    check-cast p2, Lru/rocketbank/core/realm/RealmMiles;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMilesRealmProxy;->copyOrUpdate$785b4813(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMiles;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMiles;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 250
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    check-cast p2, Lru/rocketbank/core/realm/RealmImage;

    invoke-static {p1, p2, p4}, Lio/realm/RealmImageRealmProxy;->copyOrUpdate$2833b5cd(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmImage;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmImage;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 253
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    check-cast p2, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-static {p1, p2, p4}, Lio/realm/RealmMerchantRealmProxy;->copyOrUpdate$4c5ba239(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMerchant;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMerchant;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 5235
    :cond_9
    new-instance p1, Lio/realm/exceptions/RealmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not part of the schema for this Realm."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 256
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

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 511
    const-class v1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 512
    check-cast p1, Lru/rocketbank/core/realm/RealmFriend;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmFriendRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmFriend;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmFriend;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 514
    :cond_0
    const-class v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    check-cast p1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmOperationCategoryRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmOperationCategory;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 517
    :cond_1
    const-class v1, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    check-cast p1, Lru/rocketbank/core/realm/RealmBin;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmBinRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmBin;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmBin;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 520
    :cond_2
    const-class v1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    check-cast p1, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmLinkedCardRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmLinkedCard;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmLinkedCard;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 523
    :cond_3
    const-class v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 524
    check-cast p1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmOperationRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmOperation;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 526
    :cond_4
    const-class v1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 527
    check-cast p1, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMoneyDataRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMoneyData;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 529
    :cond_5
    const-class v1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 530
    check-cast p1, Lru/rocketbank/core/realm/RealmMiles;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMilesRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMiles;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMiles;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 532
    :cond_6
    const-class v1, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 533
    check-cast p1, Lru/rocketbank/core/realm/RealmImage;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmImageRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmImage;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmImage;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 535
    :cond_7
    const-class v1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 536
    check-cast p1, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-static {p1, v2, p2, p3}, Lio/realm/RealmMerchantRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMerchant;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMerchant;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6235
    :cond_8
    new-instance p1, Lio/realm/exceptions/RealmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not part of the schema for this Realm."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 538
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

    .line 46
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p2}, Lio/realm/RealmFriendRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p2}, Lio/realm/RealmOperationCategoryRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 52
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-static {p2}, Lio/realm/RealmBinRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 55
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-static {p2}, Lio/realm/RealmLinkedCardRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 58
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-static {p2}, Lio/realm/RealmOperationRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 61
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-static {p2}, Lio/realm/RealmMoneyDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 64
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    invoke-static {p2}, Lio/realm/RealmMilesRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 67
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    invoke-static {p2}, Lio/realm/RealmImageRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 70
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    invoke-static {p2}, Lio/realm/RealmMerchantRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    return-object p1

    .line 1235
    :cond_9
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 73
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

    .line 220
    sget-object v0, Lio/realm/OpeationModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

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

    .line 148
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lio/realm/RealmFriendRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-static {}, Lio/realm/RealmOperationCategoryRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {}, Lio/realm/RealmBinRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    invoke-static {}, Lio/realm/RealmLinkedCardRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    invoke-static {}, Lio/realm/RealmOperationRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    invoke-static {}, Lio/realm/RealmMoneyDataRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-static {}, Lio/realm/RealmMilesRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    invoke-static {}, Lio/realm/RealmImageRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    invoke-static {}, Lio/realm/RealmMerchantRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3235
    :cond_9
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 175
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

    .line 180
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 182
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

    .line 185
    :cond_0
    const-class p2, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 186
    new-instance p2, Lio/realm/RealmFriendRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmFriendRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 188
    :cond_1
    :try_start_1
    const-class p2, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 189
    new-instance p2, Lio/realm/RealmOperationCategoryRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmOperationCategoryRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 191
    :cond_2
    :try_start_2
    const-class p2, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 192
    new-instance p2, Lio/realm/RealmBinRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmBinRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 194
    :cond_3
    :try_start_3
    const-class p2, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 195
    new-instance p2, Lio/realm/RealmLinkedCardRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmLinkedCardRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 197
    :cond_4
    :try_start_4
    const-class p2, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 198
    new-instance p2, Lio/realm/RealmOperationRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmOperationRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 200
    :cond_5
    :try_start_5
    const-class p2, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 201
    new-instance p2, Lio/realm/RealmMoneyDataRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMoneyDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 203
    :cond_6
    :try_start_6
    const-class p2, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 204
    new-instance p2, Lio/realm/RealmMilesRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMilesRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 206
    :cond_7
    :try_start_7
    const-class p2, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 207
    new-instance p2, Lio/realm/RealmImageRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmImageRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 209
    :cond_8
    :try_start_8
    const-class p2, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 210
    new-instance p2, Lio/realm/RealmMerchantRealmProxy;

    invoke-direct {p2}, Lio/realm/RealmMerchantRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 214
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 4235
    :cond_9
    :try_start_9
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception p1

    .line 214
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

    .line 80
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/RealmFriend;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p2, p3}, Lio/realm/RealmFriendRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;

    move-result-object p1

    return-object p1

    .line 83
    :cond_1
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p2, p3}, Lio/realm/RealmOperationCategoryRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    move-result-object p1

    return-object p1

    .line 86
    :cond_2
    const-class v0, Lru/rocketbank/core/realm/RealmBin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {p2, p3}, Lio/realm/RealmBinRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;

    move-result-object p1

    return-object p1

    .line 89
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmLinkedCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-static {p2, p3}, Lio/realm/RealmLinkedCardRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;

    move-result-object p1

    return-object p1

    .line 92
    :cond_4
    const-class v0, Lru/rocketbank/core/realm/RealmOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-static {p2, p3}, Lio/realm/RealmOperationRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;

    move-result-object p1

    return-object p1

    .line 95
    :cond_5
    const-class v0, Lru/rocketbank/core/realm/RealmMoneyData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    invoke-static {p2, p3}, Lio/realm/RealmMoneyDataRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 98
    :cond_6
    const-class v0, Lru/rocketbank/core/realm/RealmMiles;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    invoke-static {p2, p3}, Lio/realm/RealmMilesRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;

    move-result-object p1

    return-object p1

    .line 101
    :cond_7
    const-class v0, Lru/rocketbank/core/realm/RealmImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    invoke-static {p2, p3}, Lio/realm/RealmImageRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;

    move-result-object p1

    return-object p1

    .line 104
    :cond_8
    const-class v0, Lru/rocketbank/core/realm/RealmMerchant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-static {p2, p3}, Lio/realm/RealmMerchantRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmMerchantRealmProxy$RealmMerchantColumnInfo;

    move-result-object p1

    return-object p1

    .line 2235
    :cond_9
    new-instance p2, Lio/realm/exceptions/RealmException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not part of the schema for this Realm."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p2
.end method
