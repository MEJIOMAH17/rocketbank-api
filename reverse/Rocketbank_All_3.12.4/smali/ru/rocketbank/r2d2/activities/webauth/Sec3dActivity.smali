.class public final Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "Sec3dActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/activities/webauth/Sec3dView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/activities/webauth/Sec3dView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSec3dActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sec3dActivity.kt\nru/rocketbank/r2d2/activities/webauth/Sec3dActivity\n*L\n1#1,134:1\n*E\n"
.end annotation


# static fields
.field private static final AUTH_ID:Ljava/lang/String; = "AUTH_ID"

.field public static final Companion:Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;

.field private static final IMAGE_URL_KEY:Ljava/lang/String; = "IMAGE"

.field private static final REQUEST_ID:I = 0x13

.field private static final STARTED_AT_KEY:Ljava/lang/String; = "STARTED_AT"

.field private static final TEXT_KEY:Ljava/lang/String; = "TEXT"

.field private static final TTL_KEY:Ljava/lang/String; = "TTL"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->Companion:Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 22
    new-instance v0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    return-void
.end method

.method private final parseIntent(Landroid/content/Intent;)V
    .locals 3

    .line 61
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string v1, "IMAGE"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->merchantIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    const-string v1, "TTL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->setTtl(I)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    const-string v1, "STARTED_AT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->setCreatedAt(I)V

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    const-string v1, "AUTH_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.getStringExtra(AUTH_ID)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->setAuthId(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runTimer()V

    return-void
.end method

.method public static final pendingIntent(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7

    sget-object v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->Companion:Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;->pendingIntent(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cancel()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->createPresenter()Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;
    .locals 2

    .line 24
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "df70c5a4-2074-462a-92ec-7fe1663bf805"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"df70c5a\u2026-462a-92ec-7fe1663bf805\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    return-object v0
.end method

.method public final hideProgress()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->hideProgressDialog()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0069

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026layout.activity_web_auth)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setData(Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;)V

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketButton;

    const v0, 0x7f0801e2

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundResource(I)V

    .line 34
    sget-object p1, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez v0, :cond_2

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->background:Landroid/widget/ImageView;

    const-string v1, "binding.background"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/utils/ImageHelper;->loadDarkCover(Landroid/widget/ImageView;Lru/rocketbank/core/realm/UserData;)V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 37
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->parseIntent(Landroid/content/Intent;)V

    return-void

    :cond_3
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->parseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 42
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStart()V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->onAttached(Lru/rocketbank/r2d2/activities/webauth/Sec3dView;)V

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setListener(Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;)V

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runTimer()V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->onDetached()V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setListener(Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->hideProgressDialog()V

    .line 52
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStop()V

    return-void
.end method

.method public final onTimeOut()V
    .locals 2

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getButtonsEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getTtl()Landroid/databinding/ObservableField;

    move-result-object v0

    const v1, 0x7f1104d6

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final showError()V
    .locals 3

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f11018d

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method public final showProgress()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->showProgressDialog()V

    return-void
.end method

.method public final updateButtons(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getButtonsEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final updateTime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->data:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getTtl()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method
