.class public final Lru/rocketbank/core/manager/security/KeyManagerImpl;
.super Ljava/lang/Object;
.source "KeyManagerImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/KeyManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyManagerImpl.kt\nru/rocketbank/core/manager/security/KeyManagerImpl\n*L\n1#1,35:1\n*E\n"
.end annotation


# instance fields
.field private final cachedKeys:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final rocketKetStore:Lru/rocketbank/core/manager/security/RocketKeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->context:Landroid/content/Context;

    .line 11
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->cachedKeys:Landroid/support/v4/util/ArrayMap;

    .line 14
    new-instance p1, Lru/rocketbank/core/manager/security/RocketKetStoreBks;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;-><init>(Landroid/content/Context;)V

    check-cast p1, Lru/rocketbank/core/manager/security/RocketKeyStore;

    iput-object p1, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->rocketKetStore:Lru/rocketbank/core/manager/security/RocketKeyStore;

    return-void
.end method


# virtual methods
.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 2

    const-string v0, "HmacSHA512"

    .line 29
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "KeyGenerator.getInstance\u2026macSHA512\").generateKey()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->cachedKeys:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->rocketKetStore:Lru/rocketbank/core/manager/security/RocketKeyStore;

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/security/RocketKeyStore;->getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->cachedKeys:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public final getOrCreateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lru/rocketbank/core/manager/KeyManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create or get key "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-interface {p0, p1}, Lru/rocketbank/core/manager/KeyManager;->getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1017
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lru/rocketbank/core/manager/KeyManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Got the key"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1018
    :cond_1
    :goto_0
    invoke-static {}, Lru/rocketbank/core/manager/KeyManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating new key"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-interface {p0}, Lru/rocketbank/core/manager/KeyManager;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1020
    invoke-interface {p0, p1, v0}, Lru/rocketbank/core/manager/KeyManager;->storeKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

.method public final storeKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->rocketKetStore:Lru/rocketbank/core/manager/security/RocketKeyStore;

    invoke-interface {v0, p1, p2}, Lru/rocketbank/core/manager/security/RocketKeyStore;->storeKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/manager/security/KeyManagerImpl;->cachedKeys:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
