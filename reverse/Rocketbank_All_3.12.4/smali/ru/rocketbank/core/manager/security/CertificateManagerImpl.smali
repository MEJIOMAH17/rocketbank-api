.class public final Lru/rocketbank/core/manager/security/CertificateManagerImpl;
.super Ljava/lang/Object;
.source "CertificateManagerImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/CertificateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/CertificateManagerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCertificateManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificateManagerImpl.kt\nru/rocketbank/core/manager/security/CertificateManagerImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,137:1\n10940#2,2:138\n*E\n*S KotlinDebug\n*F\n+ 1 CertificateManagerImpl.kt\nru/rocketbank/core/manager/security/CertificateManagerImpl\n*L\n82#1,2:138\n*E\n"
.end annotation


# static fields
.field private static final CERTIFICATES_FILE:Ljava/lang/String; = "r2d2"

.field private static final CERTIFICATES_FOLDER:Ljava/lang/String; = "certificates"

.field public static final Companion:Lru/rocketbank/core/manager/security/CertificateManagerImpl$Companion;

.field private static final KEY_CERTIFICATES_HASH:Ljava/lang/String; = "CERTIFICATES_HASH"

.field private static final TAG:Ljava/lang/String; = "CertificateManagerImpl"

.field private static final X509_CERTIFICATE:Ljava/lang/String; = "x509-certificate"


# instance fields
.field private final certificateFactory:Ljava/security/cert/CertificateFactory;

.field private final context:Landroid/content/Context;

.field private isInit:Z

.field private final keystoreFile:Ljava/io/File;

.field private rocketTrustManager:Lru/rocketbank/core/manager/security/RocketTrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/CertificateManagerImpl$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->Companion:Lru/rocketbank/core/manager/security/CertificateManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->context:Landroid/content/Context;

    const-string p1, "X.509"

    .line 23
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->certificateFactory:Ljava/security/cert/CertificateFactory;

    .line 24
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FILE:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->keystoreFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$createCertificateStorage(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Ljava/security/KeyStore;)V
    .locals 10

    .line 1072
    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1073
    sget-object v1, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "certificates"

    .line 1075
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v1

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1078
    iget-object v3, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->keystoreFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x0

    .line 1079
    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1138
    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 1083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FOLDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 1084
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v8

    check-cast v7, Ljava/io/BufferedInputStream;

    .line 1085
    iget-object v9, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->certificateFactory:Ljava/security/cert/CertificateFactory;

    check-cast v7, Ljava/io/InputStream;

    invoke-virtual {v9, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 1086
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1087
    invoke-virtual {p1, v6, v7}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1088
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, p0

    .line 1084
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    .line 1091
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->keystoreFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/io/FileOutputStream;

    .line 1092
    check-cast v1, Ljava/io/OutputStream;

    sget-object v2, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FILE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v4, "(this as java.lang.String).toCharArray()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 1093
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1091
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1094
    iget-object p0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1095
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1096
    sget-object p1, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->KEY_CERTIFICATES_HASH:Ljava/lang/String;

    invoke-interface {p0, p1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1097
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, p0

    .line 1091
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_4
    return-void
.end method

.method public static final synthetic access$getCERTIFICATES_FILE$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCERTIFICATES_FOLDER$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->CERTIFICATES_FOLDER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCertificateFactory$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/security/cert/CertificateFactory;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->certificateFactory:Ljava/security/cert/CertificateFactory;

    return-object p0
.end method

.method public static final synthetic access$getCheckObservable(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)Lrx/Observable;
    .locals 1

    .line 2102
    new-instance v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;-><init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getKEY_CERTIFICATES_HASH$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->KEY_CERTIFICATES_HASH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKeystoreFile$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/io/File;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->keystoreFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getRocketTrustManager$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Lru/rocketbank/core/manager/security/RocketTrustManager;
    .locals 1

    .line 20
    iget-object p0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->rocketTrustManager:Lru/rocketbank/core/manager/security/RocketTrustManager;

    if-nez p0, :cond_0

    const-string v0, "rocketTrustManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getX509_CERTIFICATE$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->X509_CERTIFICATE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isInit$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->isInit:Z

    return p0
.end method

.method public static final synthetic access$setInit$p$45b972aa(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->isInit:Z

    return-void
.end method

.method public static final synthetic access$setRocketTrustManager$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Lru/rocketbank/core/manager/security/RocketTrustManager;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->rocketTrustManager:Lru/rocketbank/core/manager/security/RocketTrustManager;

    return-void
.end method


# virtual methods
.method public final checkCertificate(Landroid/net/http/SslCertificate;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslCertificate;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    new-instance v0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;-><init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create<Any> {\u2026nError(t)\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 123
    new-instance v1, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;-><init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "getInitObservable()\n    \u2026Observable(certificate) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->context:Landroid/content/Context;

    return-object v0
.end method
