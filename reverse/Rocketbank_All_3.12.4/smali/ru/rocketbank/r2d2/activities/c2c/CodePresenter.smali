.class public final Lru/rocketbank/r2d2/activities/c2c/CodePresenter;
.super Lru/rocketbank/core/utils/presenter/RxPresenter;
.source "CodePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/CodePresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/presenter/RxPresenter<",
        "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$Companion;

.field private static final INSTANCE_ID:I = 0x1


# instance fields
.field private card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

.field private certificateManager:Lru/rocketbank/core/manager/security/CertificateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->Companion:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCard2CardApi$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;)Lru/rocketbank/core/network/api/Card2CardApi;
    .locals 1

    .line 19
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    if-nez p0, :cond_0

    const-string v0, "card2CardApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCertificateManager$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;)Lru/rocketbank/core/manager/security/CertificateManager;
    .locals 1

    .line 19
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->certificateManager:Lru/rocketbank/core/manager/security/CertificateManager;

    if-nez p0, :cond_0

    const-string v0, "certificateManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$logSslError(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Landroid/net/http/SslError;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->logSslError(Landroid/net/http/SslError;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCard2CardApi$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Lru/rocketbank/core/network/api/Card2CardApi;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method

.method public static final synthetic access$setCertificateManager$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Lru/rocketbank/core/manager/security/CertificateManager;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->certificateManager:Lru/rocketbank/core/manager/security/CertificateManager;

    return-void
.end method

.method private final logSslError(Landroid/net/http/SslError;Ljava/lang/String;)V
    .locals 7

    .line 69
    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, ""

    .line 73
    :cond_3
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, ""

    .line 74
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, ""

    .line 77
    :cond_7
    :try_start_0
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v5, "uri"

    .line 79
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 85
    :cond_8
    :goto_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cert error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " html:\n "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/arch/lifecycle/MethodCallsLogger;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance p2, Lru/rocketbank/core/exceptions/RocketWebViewException;

    invoke-direct {p2, p1}, Lru/rocketbank/core/exceptions/RocketWebViewException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2, p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 88
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    .line 28
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCertificateManager()Lru/rocketbank/core/manager/security/CertificateManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->certificateManager:Lru/rocketbank/core/manager/security/CertificateManager;

    return-void
.end method

.method public final onSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/SslErrorHandler;",
            "Landroid/net/http/SslError;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "html"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->INSTANCE_ID:I

    .line 48
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 47
    invoke-virtual {p0, v0, v1, p4, p5}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final requestCode(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
            "-",
            "Lru/rocketbank/core/model/card/Card2CardStatusResponseData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 34
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->INSTANCE_ID:I

    .line 35
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;I)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 34
    invoke-virtual {p0, v0, v1, p2, p3}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
