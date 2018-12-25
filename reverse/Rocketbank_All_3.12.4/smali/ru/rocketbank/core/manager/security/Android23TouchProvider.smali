.class public final Lru/rocketbank/core/manager/security/Android23TouchProvider;
.super Ljava/lang/Object;
.source "Android23TouchProvider.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/TouchProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;,
        Lru/rocketbank/core/manager/security/Android23TouchProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/Android23TouchProvider$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_IS_FILE_STRATEGY:Ljava/lang/String; = "IS_FILES_STRATEGY"

.field public static final KEY_IS_REALM_STRATEGY:Ljava/lang/String; = "IS_REALM_STRATEGY"

.field public static final KEY_NAME:Ljava/lang/String; = "CIPCHER_KEY"

.field public static final KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final NEW_KEY_NAME:Ljava/lang/String; = "14e79836-0672-459f-b832-08c74ddec327"

.field public static final TAG:Ljava/lang/String; = "A23TOUCH"


# instance fields
.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final cipher:Ljavax/crypto/Cipher;

.field private final context:Landroid/content/Context;

.field private final fingerPrintHandler:Landroid/os/Handler;

.field private final fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private isFileStorage:Z

.field private isInitialized:Z

.field private isRealmStorage:Z

.field private final ivFile:Ljava/io/File;

.field private final keyStore:Ljava/security/KeyStore;

.field private final keyguardManager:Landroid/app/KeyguardManager;

.field private tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

.field private touchListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/rocketbank/core/manager/security/RocketFingerPrintListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/Android23TouchProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/Android23TouchProvider$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->Companion:Lru/rocketbank/core/manager/security/Android23TouchProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    .line 35
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.hardware.fingerprint.FingerprintManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 36
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyguardManager:Landroid/app/KeyguardManager;

    .line 39
    sget-object p1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_STORE:Ljava/lang/String;

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    const-string v0, "KeyStore.getInstance(KEY_STORE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    const-string p1, "AES/CBC/PKCS7Padding"

    .line 43
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const-string v0, "Cipher.getInstance(\"${Ke\u2026CRYPTION_PADDING_PKCS7}\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    .line 47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jumbomode_jet.iv"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    .line 54
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 55
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 56
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_IS_FILE_STRATEGY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isFileStorage:Z

    .line 57
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_IS_REALM_STRATEGY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isRealmStorage:Z

    .line 59
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    .line 62
    iget-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isRealmStorage:Z

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRealmTouchIdStorage()Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    goto :goto_0

    .line 63
    :cond_2
    iget-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isFileStorage:Z

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTouchIdFileStorage()Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getSharedPreferencesTouchIdStorage()Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    .line 61
    :goto_0
    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    .line 259
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getToken(Lru/rocketbank/core/manager/security/Android23TouchProvider;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getToken(Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final deleteKey()V
    .locals 2

    .line 180
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->NEW_KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->NEW_KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final getToken(Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 200
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v2, Lru/rocketbank/core/manager/security/Android23TouchProvider;->NEW_KEY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    const-string v2, "KEYS"

    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    invoke-interface {v1, p1}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->readToken(Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lru/rocketbank/core/manager/security/RocketMigrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043e\u043a. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u043e\u0437\u0436\u0435."

    .line 212
    invoke-direct {p0, v1, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->handleReadFingerPrint(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string/jumbo v1, "\u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043e\u043a \u043f\u0430\u043b\u044c\u0446\u0430 \u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 \"\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\""

    .line 208
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, v1, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->handleReadFingerPrint(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-virtual {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->invalidateToken()V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string/jumbo v1, "\u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043e\u043a \u043f\u0430\u043b\u044c\u0446\u0430 \u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 \"\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\""

    .line 204
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, v1, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->handleReadFingerPrint(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-virtual {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->invalidateToken()V

    :goto_0
    return-object v0
.end method

.method private final handleReadFingerPrint(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3279
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    if-eqz v0, :cond_0

    const v1, 0xfacc

    .line 217
    invoke-interface {v0, v1, p1}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationError(ILjava/lang/String;)V

    .line 218
    :cond_0
    new-instance p1, Lru/rocketbank/core/exceptions/RocketException;

    const-string v0, "cant read token from file"

    invoke-direct {p1, v0, p2}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static initNewKey()Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "AES"

    .line 267
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_STORE:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    sget-object v2, Lru/rocketbank/core/manager/security/Android23TouchProvider;->NEW_KEY_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "CBC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 269
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PKCS7Padding"

    aput-object v3, v2, v5

    .line 271
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 273
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 274
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "new key generated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key"

    .line 275
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final initTouch(Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    iput-boolean v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isInitialized:Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    :try_start_1
    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v3, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1279
    iget-object v3, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v3}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onKeyNeedsForUpdate()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyStore:Ljava/security/KeyStore;

    sget-object v3, Lru/rocketbank/core/manager/security/Android23TouchProvider;->NEW_KEY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->initNewKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    check-cast v2, Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 91
    :try_start_2
    sget-object v3, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->deleteKey()V

    .line 93
    invoke-static {}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->initNewKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 99
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 102
    :cond_2
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object p1

    .line 106
    iget-object v4, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    check-cast v6, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v4, v5, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    :goto_1
    sget-object p1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "old cipher"

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    :try_start_3
    iput-boolean v3, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isInitialized:Z
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 108
    :cond_4
    :try_start_4
    new-instance p1, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    const-string v2, "iv file not exists"

    invoke-direct {p1, v2}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_4
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->invalidateToken()V

    .line 115
    sget-object v2, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v3, "key invalid"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    return v0

    :catch_2
    move-exception p1

    .line 147
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Other crypto error: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_3
    move-exception p1

    .line 144
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Crypto error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_4
    move-exception p1

    .line 141
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Crypto error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception p1

    .line 138
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Crypto error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception p1

    .line 135
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Crypto error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_7
    move-exception p1

    .line 132
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Crypto error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_8
    move-exception p1

    .line 129
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_9
    move-exception p1

    .line 126
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_a
    move-exception p1

    .line 123
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_b
    move-exception p1

    .line 120
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore error: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 151
    :goto_3
    iget-boolean p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isInitialized:Z

    if-eqz p1, :cond_8

    .line 152
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_6

    .line 153
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 154
    :cond_5
    iput-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 157
    :cond_6
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 159
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 161
    :try_start_6
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    new-instance p1, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;

    invoke-direct {p1, p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;-><init>(Lru/rocketbank/core/manager/security/Android23TouchProvider;)V

    move-object v4, p1

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget-object v5, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerPrintHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_4

    :catch_c
    move-exception p1

    const-string/jumbo v0, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0430\u044f \u043e\u0448\u0438\u0431\u043a\u0430! \u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c \u0441\u043a\u0430\u043d\u043d\u0435\u0440 \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u0430 \u043f\u0430\u043b\u044c\u0446\u0430."

    .line 2279
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    if-eqz v1, :cond_7

    const/16 v2, 0xfac

    .line 164
    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationError(ILjava/lang/String;)V

    .line 165
    :cond_7
    invoke-static {p1, v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 167
    :goto_4
    sget-object p1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v0, "fingerprint init"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_8
    iget-boolean p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isInitialized:Z

    return p1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;
    .locals 1

    .line 279
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    return-object v0
.end method

.method public final gotValidToken()Z
    .locals 1

    .line 173
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->hasValidToken()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasFingerprints()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public final hasHardware()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public final initialize(Z)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isReadyTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->initTouch(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final invalidateToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->invalidateToken()V

    .line 190
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->ivFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->deleteKey()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isLockScreenEnabled()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public final isReadyTouch()Z
    .locals 4

    const/4 v0, 0x0

    .line 4319
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4323
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5321
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 315
    new-instance v2, Lru/rocketbank/core/exceptions/RocketException;

    const-string v3, "check isReadyTouch()"

    invoke-direct {v2, v3, v1}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public final setListener(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lru/rocketbank/core/manager/security/RocketFingerPrintListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "touchListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->touchListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Token save error 1 attempt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance v1, Lru/rocketbank/core/exceptions/RocketException;

    const-string v2, "Token save error 1 attempt"

    invoke-direct {v1, v2, v0}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 4246
    iget-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isFileStorage:Z

    if-eqz v1, :cond_0

    .line 4247
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getSharedPreferencesTouchIdStorage()Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    iput-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    const/4 v1, 0x0

    .line 4248
    iput-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isFileStorage:Z

    .line 4249
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_IS_FILE_STRATEGY:Ljava/lang/String;

    iget-boolean v3, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isFileStorage:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    :cond_0
    :try_start_1
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-interface {v1, p1, v2}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 233
    :catch_1
    sget-object v1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v2, "Token save error 2 attempt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    new-instance v1, Lru/rocketbank/core/exceptions/RocketException;

    const-string v2, "Token save error 2 attempt"

    invoke-direct {v1, v2, v0}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 4254
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRealmTouchIdStorage()Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    iput-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    const/4 v1, 0x1

    .line 4255
    iput-boolean v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isRealmStorage:Z

    .line 4256
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/manager/security/Android23TouchProvider;->KEY_IS_REALM_STRATEGY:Ljava/lang/String;

    iget-boolean v3, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->isRealmStorage:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    :try_start_2
    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->tokenStorage:Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->cipher:Ljavax/crypto/Cipher;

    invoke-interface {v1, p1, v2}, Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;->saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 239
    :catch_2
    sget-object p1, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v1, "Token save error 3 attempt"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    new-instance p1, Lru/rocketbank/core/exceptions/RocketException;

    const-string/jumbo v1, "\u043f\u0438\u0437\u0434\u0435\u0446 \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u0443"

    invoke-direct {p1, v1, v0}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
