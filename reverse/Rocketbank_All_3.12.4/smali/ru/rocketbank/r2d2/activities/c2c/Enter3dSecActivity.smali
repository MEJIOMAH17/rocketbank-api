.class public final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "Enter3dSecActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;,
        Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/activities/c2c/CodePresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

.field private static final ERROR:Ljava/lang/String; = "ERROR"

.field private static final EXTRA_HTML:Ljava/lang/String; = "HTML"

.field private static final EXTRA_ID:Ljava/lang/String; = "ID"

.field private static final REQUEST_CODE:I = 0xa

.field private static final RESULT:Ljava/lang/String; = "RESULT"

.field private static final RESULT_FAILED:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Enter3dSecActivity"

.field private static final TIMEOUT:J = 0x7530L


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private errorCount:I

.field private final handler:Landroid/os/Handler;

.field private html:Ljava/lang/String;

.field private id:I

.field private final timeOutcheckRunnable:Ljava/lang/Runnable;

.field private timeout:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->handler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->timeOutcheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getERROR$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_HTML$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->EXTRA_HTML:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_ID$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->EXTRA_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getHtml$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Ljava/lang/String;
    .locals 1

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->html:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "html"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .line 22
    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    return v0
.end method

.method public static final synthetic access$getRESULT$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRESULT_FAILED$cp()I
    .locals 1

    .line 22
    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_FAILED:I

    return v0
.end method

.method public static final synthetic access$getRESULT_OK$cp()I
    .locals 1

    .line 22
    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_OK:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTIMEOUT$cp()J
    .locals 2

    .line 22
    sget-wide v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getTimeOutcheckRunnable$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->timeOutcheckRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getTimeout$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->timeout:Z

    return p0
.end method

.method public static final synthetic access$getWebView$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/webkit/WebView;
    .locals 1

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez p0, :cond_0

    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$onLocalSslError(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onLocalSslError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onLocalSslResult(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onLocalSslResult(Z)V

    return-void
.end method

.method public static final synthetic access$requestCode(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->requestCode()V

    return-void
.end method

.method public static final synthetic access$setHtml$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->html:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setTimeout$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->timeout:Z

    return-void
.end method

.method public static final synthetic access$setWebView$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static final getERROR()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    return-object v0
.end method

.method public static final getREQUEST_CODE()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    return v0
.end method

.method public static final getRESULT()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT:Ljava/lang/String;

    return-object v0
.end method

.method public static final getRESULT_FAILED()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_FAILED:I

    return v0
.end method

.method public static final getRESULT_OK()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_OK:I

    return v0
.end method

.method public static final getTIMEOUT()J
    .locals 2

    sget-wide v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->TIMEOUT:J

    return-wide v0
.end method

.method private final logError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    new-instance p2, Lru/rocketbank/core/exceptions/RocketWebViewException;

    invoke-direct {p2, p1}, Lru/rocketbank/core/exceptions/RocketWebViewException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2, p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private final onLocalSslError(Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setErrorSSL(Ljava/lang/String;)V

    return-void
.end method

.method private final onLocalSslResult(Z)V
    .locals 0

    return-void
.end method

.method private final requestCode()V
    .locals 4

    .line 261
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    iget v1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->id:I

    .line 262
    sget-object v2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$requestCode$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$requestCode$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 263
    sget-object v3, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$requestCode$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$requestCode$2;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->requestCode(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static bridge synthetic setErrorSSL$default(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const p1, 0x7f110190

    .line 159
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setErrorSSL(Ljava/lang/String;)V

    return-void
.end method

.method public static final startActivity(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->startActivity(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->createPresenter()Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/c2c/CodePresenter;
    .locals 2

    .line 23
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "6e74114d-d070-41bc-8eab-055e33aecfba"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"6e74114\u2026-41bc-8eab-055e33aecfba\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    return-object v0
.end method

.method public final execute()V
    .locals 4

    .line 257
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$execute$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$execute$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final initWebView()V
    .locals 4

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->html:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "html"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final initWebViewGeneral()V
    .locals 3

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;-><init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webView.settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    const-string v2, "webView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 190
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_4

    const-string v2, "webView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    if-nez v0, :cond_6

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    const-string v2, "webView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    :cond_6
    return-void
.end method

.method public final onActionFailed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT:Ljava/lang/String;

    sget v2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_FAILED:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    sget p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->finish()V

    return-void
.end method

.method public final onActionSuccess()V
    .locals 3

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT:Ljava/lang/String;

    sget v2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_OK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    sget v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003b

    .line 136
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setContentView(I)V

    const v0, 0x7f090415

    .line 137
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.webkit.WebView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->EXTRA_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->id:I

    .line 140
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->EXTRA_HTML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getStringExtra(EXTRA_HTML)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->html:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->initWebViewGeneral()V

    if-nez p1, :cond_2

    .line 144
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->initWebView()V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 149
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 151
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT:Ljava/lang/String;

    sget v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->RESULT_FAILED:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    const v1, 0x7f1103a6

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    sget v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->execute()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onDestroy()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 240
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->TAG:Ljava/lang/String;

    const-string v1, "Error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iget p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->errorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->errorCount:I

    .line 244
    iget p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->errorCount:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const-string/jumbo p1, "\u0421\u0435\u0440\u0432\u0435\u0440 \u043d\u0435 \u0441\u043c\u043e\u0433 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u044c \u0437\u0430\u043f\u0440\u043e\u0441 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u0440\u0430\u0437 \u043f\u043e\u0434\u0440\u044f\u0434"

    .line 245
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onActionFailed(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->execute()V

    return-void
.end method

.method protected final onResume()V
    .locals 0

    .line 202
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onResume()V

    .line 203
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->keepUnlocked()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 268
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess(Lru/rocketbank/core/model/card/Card2CardStatusResponseData;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5c4d208

    if-eq v1, v2, :cond_3

    const v2, 0x192a2f13

    if-eq v1, v2, :cond_2

    const v2, 0x46a566b7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "approved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->refresh()V

    .line 216
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onActionSuccess()V

    return-void

    :cond_2
    const-string v1, "processing"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->execute()V

    return-void

    :cond_3
    const-string v1, "error"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->getErrors()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result.errors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onActionFailed(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u041d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b\u0439 \u043a\u043e\u0434 \u043e\u0442\u0432\u0435\u0442\u0430: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->onActionFailed(Ljava/lang/String;)V

    return-void
.end method

.method public final setErrorLoading()V
    .locals 3

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    const v2, 0x7f110362

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    sget v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    .line 172
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->finish()V

    return-void
.end method

.method public final setErrorSSL(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    .line 164
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->finish()V

    return-void
.end method

.method public final setErrorTimeout()V
    .locals 3

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->ERROR:Ljava/lang/String;

    const v2, 0x7f11046a

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget v1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->REQUEST_CODE:I

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->hideProgressDialog()V

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->finish()V

    return-void
.end method
