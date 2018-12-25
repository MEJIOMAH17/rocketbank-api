.class final Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;
.super Ljava/lang/Object;
.source "CodePresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->invoke()Lrx/Observable;
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
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "res"

    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 57
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$error:Landroid/net/http/SslError;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$html:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->access$logSslError(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;Landroid/net/http/SslError;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 60
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0441\u0435\u0440\u0442\u0438\u0444\u0438\u043a\u0430\u0442. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1;->$html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$onSslError$1$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
