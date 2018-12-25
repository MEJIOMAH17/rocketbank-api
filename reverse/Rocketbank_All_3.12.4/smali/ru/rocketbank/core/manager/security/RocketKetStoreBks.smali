.class public final Lru/rocketbank/core/manager/security/RocketKetStoreBks;
.super Ljava/lang/Object;
.source "RocketKetStoreBks.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/RocketKeyStore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketKetStoreBks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketKetStoreBks.kt\nru/rocketbank/core/manager/security/RocketKetStoreBks\n*L\n1#1,81:1\n*E\n"
.end annotation


# instance fields
.field private final FILE_NAME:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final keyStore:Ljava/security/KeyStore;

.field private final protParam:Ljava/security/KeyStore$PasswordProtection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    const-string p1, "BKS"

    .line 13
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    const-string v0, "KeyStore.getInstance(\"BKS\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    const-string p1, "jumbomode_jetplus.bks"

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->getPassword()[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->protParam:Ljava/security/KeyStore$PasswordProtection;

    const-string p1, "KEYS"

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Open keystore : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3027
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "context.filesDir"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->loadKeyStore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5027
    :catch_0
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4049
    iget-object p1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->getPassword()[C

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 4050
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->saveKeyStore()V

    .line 4051
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->loadKeyStore()V

    return-void
.end method

.method private final getPassword()[C
    .locals 2

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings.Secure.getStrin\u2026ttings.Secure.ANDROID_ID)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final loadKeyStore()V
    .locals 5

    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    .line 1027
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "context.filesDir"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileInputStream;

    .line 56
    iget-object v3, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->getPassword()[C

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 57
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
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

.method private saveKeyStore()V
    .locals 5

    .line 76
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2027
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "context.filesDir"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileOutputStream;

    .line 77
    iget-object v3, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->getPassword()[C

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 78
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
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


# virtual methods
.method public final getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->protParam:Ljava/security/KeyStore$PasswordProtection;

    check-cast v1, Ljava/security/KeyStore$ProtectionParameter;

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    .line 63
    instance-of v0, p1, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final storeKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->keyStore:Ljava/security/KeyStore;

    check-cast v0, Ljava/security/KeyStore$Entry;

    iget-object v1, p0, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->protParam:Ljava/security/KeyStore$PasswordProtection;

    check-cast v1, Ljava/security/KeyStore$ProtectionParameter;

    invoke-virtual {p2, p1, v0, v1}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 72
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/RocketKetStoreBks;->saveKeyStore()V

    return-void
.end method
