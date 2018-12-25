.class public final Lru/rocketbank/core/user/impl/RealmAuthStorage;
.super Ljava/lang/Object;
.source "RealmAuthStorage.kt"

# interfaces
.implements Lru/rocketbank/core/user/AuthorizationStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/user/impl/RealmAuthStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealmAuthStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealmAuthStorage.kt\nru/rocketbank/core/user/impl/RealmAuthStorage\n*L\n1#1,103:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/user/impl/RealmAuthStorage$Companion;

.field private static final TAG:Ljava/lang/String; = "RealmAuthStorage"


# instance fields
.field private final keyManager:Lru/rocketbank/core/manager/KeyManager;

.field private userData:Lru/rocketbank/core/realm/UserData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/user/impl/RealmAuthStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/user/impl/RealmAuthStorage$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->Companion:Lru/rocketbank/core/user/impl/RealmAuthStorage$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/manager/KeyManager;)V
    .locals 1

    const-string v0, "keyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    .line 19
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->readState()Lru/rocketbank/core/realm/UserData;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->userData:Lru/rocketbank/core/realm/UserData;

    return-void
.end method

.method private final getRealmConfiguration()Lio/realm/RealmConfiguration;
    .locals 3

    .line 29
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v1, "userxx.realm"

    .line 30
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    const-string v2, "auth-key"

    invoke-interface {v1, v2}, Lru/rocketbank/core/manager/KeyManager;->getOrCreateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const-string v2, "keyManager.getOrCreateKey(\"auth-key\").encoded"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 34
    new-instance v1, Lru/rocketbank/core/realm/module/UserModule;

    invoke-direct {v1}, Lru/rocketbank/core/realm/module/UserModule;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    const-string v1, "RealmConfiguration.Build\u2026                 .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private readState()Lru/rocketbank/core/realm/UserData;
    .locals 1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->readStateDirect()Lru/rocketbank/core/realm/UserData;

    move-result-object v0
    :try_end_0
    .catch Lio/realm/exceptions/RealmFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    new-instance v0, Lru/rocketbank/core/realm/UserData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/UserData;-><init>()V

    goto :goto_0

    .line 81
    :catch_1
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 82
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->readStateDirect()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final readStateDirect()Lru/rocketbank/core/realm/UserData;
    .locals 3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/realm/UserData;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/realm/UserData;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    check-cast v0, Lio/realm/RealmModel;

    invoke-virtual {v1, v0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/realm/UserData;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lru/rocketbank/core/realm/UserData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/UserData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    sget-object v1, Lru/rocketbank/core/user/impl/RealmAuthStorage;->TAG:Ljava/lang/String;

    const-string v2, "Read state failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v0, Lru/rocketbank/core/realm/UserData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/UserData;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    throw v0
.end method


# virtual methods
.method public final getRealm()Lio/realm/Realm;
    .locals 3

    .line 52
    sget-object v0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->TAG:Ljava/lang/String;

    const-string v1, "getting realm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AuthStore"

    const-string v2, "Realm? Got... "

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 59
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final getState()Lru/rocketbank/core/realm/UserData;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->userData:Lru/rocketbank/core/realm/UserData;

    return-object v0
.end method

.method public final removeState()V
    .locals 3

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/user/impl/RealmAuthStorage$removeState$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage$removeState$1;-><init>(Lru/rocketbank/core/user/impl/RealmAuthStorage;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Lru/rocketbank/core/user/impl/RealmAuthStorage;->TAG:Ljava/lang/String;

    const-string v2, "Failed to delete state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final storeState(Lru/rocketbank/core/realm/UserData;)V
    .locals 2

    const-string v0, "userData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->userData:Lru/rocketbank/core/realm/UserData;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;-><init>(Lru/rocketbank/core/user/impl/RealmAuthStorage;Lru/rocketbank/core/realm/UserData;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 71
    :try_start_1
    sget-object v0, Lru/rocketbank/core/user/impl/RealmAuthStorage;->TAG:Ljava/lang/String;

    const-string v1, "Store failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1
.end method
