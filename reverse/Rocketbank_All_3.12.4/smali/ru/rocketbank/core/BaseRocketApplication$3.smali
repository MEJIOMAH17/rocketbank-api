.class final Lru/rocketbank/core/BaseRocketApplication$3;
.super Ljava/lang/Object;
.source "BaseRocketApplication.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/BaseRocketApplication;->initNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/BaseRocketApplication;

.field final synthetic val$origTrustmanager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/BaseRocketApplication;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lru/rocketbank/core/BaseRocketApplication$3;->this$0:Lru/rocketbank/core/BaseRocketApplication;

    iput-object p2, p0, Lru/rocketbank/core/BaseRocketApplication$3;->val$origTrustmanager:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 155
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication$3;->val$origTrustmanager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 163
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication$3;->val$origTrustmanager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    return-void

    :catch_1
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication$3;->val$origTrustmanager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
