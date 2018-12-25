.class public final Lru/rocketbank/core/user/impl/RealmAppInformationStorage;
.super Ljava/lang/Object;
.source "RealmAppInformationStorage.kt"

# interfaces
.implements Lru/rocketbank/core/user/AppInformationStorage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealmAppInformationStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealmAppInformationStorage.kt\nru/rocketbank/core/user/impl/RealmAppInformationStorage\n*L\n1#1,65:1\n*E\n"
.end annotation


# instance fields
.field private final keyManager:Lru/rocketbank/core/manager/KeyManager;

.field private final realmConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/KeyManager;)V
    .locals 2

    const-string v0, "keyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    .line 22
    new-instance p1, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {p1}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v0, "dvc.realm"

    .line 23
    invoke-virtual {p1, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 3017
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    const-string v1, "device-key"

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/KeyManager;->getOrCreateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v1, "keyManager.getOrCreateKey(\"device-key\").encoded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v0}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, v1}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 27
    new-instance v0, Lru/rocketbank/core/realm/module/AppInfoModule;

    invoke-direct {v0}, Lru/rocketbank/core/realm/module/AppInfoModule;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object p1

    const-string v0, "RealmConfiguration.Build\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-void
.end method


# virtual methods
.method public final getRealm()Lio/realm/Realm;
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final readData()Lru/rocketbank/core/realm/DeviceInfoData;
    .locals 4

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/realm/DeviceInfoData;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v2

    check-cast v1, Lio/realm/RealmModel;

    invoke-virtual {v2, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/realm/DeviceInfoData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    :try_start_1
    sget-object v2, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->Companion:Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;

    .line 1064
    invoke-static {}, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to read storage"

    .line 47
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    throw v0
.end method

.method public final writeData(Lru/rocketbank/core/realm/DeviceInfoData;)V
    .locals 2

    const-string v0, "deviceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;-><init>(Lru/rocketbank/core/user/impl/RealmAppInformationStorage;Lru/rocketbank/core/realm/DeviceInfoData;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    :try_start_1
    sget-object v0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->Companion:Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;

    .line 2064
    invoke-static {}, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to store"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1
.end method
