.class public final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Enter3dSecActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecurityCodeWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$setTimeout$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Z)V

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$setTimeout$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Z)V

    .line 51
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->showProgressDialog()V

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getHandler$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onPageStarted$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onPageStarted$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;)V

    check-cast p2, Ljava/lang/Runnable;

    .line 56
    sget-object p3, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getTIMEOUT()J

    move-result-wide v0

    .line 52
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 58
    :catch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getHandler$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getTimeOutcheckRunnable$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Ljava/lang/Runnable;

    move-result-object p2

    sget-object p3, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getTIMEOUT()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "description"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "failingUrl"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 71
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setErrorLoading()V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Resource error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, " html_page:\n "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getHtml$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    const v1, 0x7f110331

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getHtml$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    sget-object p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->onSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "uri"

    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rocketbank.ru"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "ariuspay.ru/finish"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getWebView$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, p2, v1, v2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method
