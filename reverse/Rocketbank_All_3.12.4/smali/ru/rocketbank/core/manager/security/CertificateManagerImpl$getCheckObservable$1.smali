.class final Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;
.super Ljava/lang/Object;
.source "CertificateManagerImpl.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/security/CertificateManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCertificateManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificateManagerImpl.kt\nru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1\n*L\n1#1,137:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $sslCertificate:Landroid/net/http/SslCertificate;

.field final synthetic this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    iput-object p2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;->$sslCertificate:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 4

    .line 102
    check-cast p1, Lrx/Subscriber;

    .line 1104
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;->$sslCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v0

    .line 1105
    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getX509_CERTIFICATE$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v1}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getCertificateFactory$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    :try_start_1
    iget-object v1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getCheckObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v1}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getRocketTrustManager$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Lru/rocketbank/core/manager/security/RocketTrustManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "generic"

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/core/manager/security/RocketTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1110
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 1112
    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 1116
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
