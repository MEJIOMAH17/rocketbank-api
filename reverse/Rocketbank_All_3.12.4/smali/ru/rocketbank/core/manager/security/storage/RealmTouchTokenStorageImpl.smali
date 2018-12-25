.class public final Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;
.super Ljava/lang/Object;
.source "RealmTouchTokenStorageImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealmTouchTokenStorageImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealmTouchTokenStorageImpl.kt\nru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl\n*L\n1#1,70:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FILE:Ljava/lang/String; = "jumbomode_jet.r"

.field public static final KEY_NAME:Ljava/lang/String; = "rocket_14e79836-0672-459f-b832-08c74ddec327"


# instance fields
.field private final config:Lio/realm/RealmConfiguration;

.field private final context:Landroid/content/Context;

.field private final keyManager:Lru/rocketbank/core/manager/KeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->Companion:Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/manager/KeyManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    .line 2055
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string v0, "context.filesDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->FILE:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object p2, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->keyManager:Lru/rocketbank/core/manager/KeyManager;

    sget-object v0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->KEY_NAME:Ljava/lang/String;

    invoke-interface {p2, v0}, Lru/rocketbank/core/manager/KeyManager;->getOrCreateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 2058
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    .line 2059
    invoke-virtual {v0, p1}, Lio/realm/RealmConfiguration$Builder;->directory(Ljava/io/File;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 2060
    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 2061
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    .line 2062
    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object p1

    const-string p2, "RealmConfiguration.Build\u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->config:Lio/realm/RealmConfiguration;

    return-void
.end method


# virtual methods
.method public final hasValidToken()Z
    .locals 4

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->config:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/realm/Realm;

    .line 42
    const-class v3, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 41
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final invalidateToken()V
    .locals 4

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->config:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/realm/Realm;

    .line 48
    new-instance v3, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$invalidateToken$1$1;

    invoke-direct {v3, v2}, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$invalidateToken$1$1;-><init>(Lio/realm/Realm;)V

    check-cast v3, Lio/realm/Realm$Transaction;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 51
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final readToken(Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 3

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->config:Lio/realm/RealmConfiguration;

    invoke-static {p1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lio/realm/Realm;

    .line 32
    const-class v2, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    if-eqz v2, :cond_0

    .line 34
    check-cast v2, Lio/realm/RealmModel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    .line 2011
    invoke-virtual {v1}, Lru/rocketbank/core/manager/security/storage/TouchIdObject;->realmGet$token()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 31
    :cond_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-direct {p2}, Lru/rocketbank/core/manager/security/storage/TouchIdObject;-><init>()V

    const-string v0, "<set-?>"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2, p1}, Lru/rocketbank/core/manager/security/storage/TouchIdObject;->realmSet$token(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->config:Lio/realm/RealmConfiguration;

    invoke-static {p1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lio/realm/Realm;

    .line 23
    new-instance v2, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;

    invoke-direct {v2, v1, p2}, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;-><init>(Lio/realm/Realm;Lru/rocketbank/core/manager/security/storage/TouchIdObject;)V

    check-cast v2, Lio/realm/Realm$Transaction;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 27
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
