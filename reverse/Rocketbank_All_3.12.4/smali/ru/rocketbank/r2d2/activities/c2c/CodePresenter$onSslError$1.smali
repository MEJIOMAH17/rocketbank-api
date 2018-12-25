.class final Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CodePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->onSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrx/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $error:Landroid/net/http/SslError;

.field final synthetic $handler:Landroid/webkit/SslErrorHandler;

.field final synthetic $html:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$error:Landroid/net/http/SslError;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$html:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->invoke()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->access$getCertificateManager$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;)Lru/rocketbank/core/manager/security/CertificateManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$error:Landroid/net/http/SslError;

    invoke-virtual {v1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    const-string v2, "error.certificate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/security/CertificateManager;->checkCertificate(Landroid/net/http/SslCertificate;)Lrx/Observable;

    move-result-object v0

    .line 50
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 51
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 52
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 62
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$2;

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "certificateManager.check\u2026anager.logException(it) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
