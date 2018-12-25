.class public final Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;
.super Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;
.source "RocketCafeActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;
.implements Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;
.implements Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/PresenterAbstractActivity<",
        "Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;",
        "Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;",
        "Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;"
    }
.end annotation


# static fields
.field private static final CAFE_URI_SCHEME:Ljava/lang/String; = "rocketcafe://payStatus/"

.field private static final CANCEL_RESULT:Ljava/lang/String; = "cancel"

.field public static final Companion:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;

.field private static final ERROR_RESULT:Ljava/lang/String; = "error"

.field private static final KEY_AMOUNT:Ljava/lang/String; = "amount"

.field private static final OK_RESULT:Ljava/lang/String; = "ok"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private amount:J

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

.field private codeFragment:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

.field private final data:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->Companion:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;-><init>()V

    .line 28
    new-instance v0, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->data:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    return-void
.end method

.method public static final synthetic access$getKEY_AMOUNT$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->KEY_AMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method private final finishWithResult(Ljava/lang/String;)V
    .locals 4

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->CAFE_URI_SCHEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->codeFragment:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->setCodeInputListener(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;)V

    :cond_1
    const-string v0, "RocketCafeActivity"

    const-string v1, "resilt="

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->finish()V

    return-void
.end method

.method private final lockScreen()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 84
    sget-object v1, Lru/rocketbank/r2d2/activities/SecuredActivity;->Companion:Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;->getLOCK_SCREEN_TAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;-><init>()V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->codeFragment:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->codeFragment:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->setCodeInputListener(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;)V

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->codeFragment:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    check-cast v2, Landroid/support/v4/app/Fragment;

    sget-object v3, Lru/rocketbank/r2d2/activities/SecuredActivity;->Companion:Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;->getLOCK_SCREEN_TAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method public static final start(Landroid/content/Context;J)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->Companion:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;->start(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cancelButtonClicked()V
    .locals 1

    .line 105
    sget-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->CANCEL_RESULT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method public final confirmButtonClicked()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->lockScreen()V

    return-void
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->createPresenter()Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;
    .locals 2

    .line 34
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "910548dc-73f3-4b5c-a16e-1d20080b5959"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"910548d\u2026-4b5c-a16e-1d20080b5959\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 68
    sget-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->CANCEL_RESULT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method public final onCodeCorrect()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->showProgressDialog()V

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    iget-wide v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->amount:J

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->fillSafe(J)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c0056

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026out.activity_rocket_cafe)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->transferButton:Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundResource(I)V

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->data:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setData(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;)V

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->KEY_AMOUNT:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->amount:J

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->onCreate(Landroid/os/Bundle;Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;)V

    .line 44
    iget-wide v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->amount:J

    long-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->data:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;->getAmount()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-wide v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->amount:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "amount must be > 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected final onDestroy()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->onDestroy()V

    .line 64
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;->onDestroy()V

    return-void
.end method

.method public final onRefillError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->hideProgressDialog()V

    .line 110
    sget-object p1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->ERROR_RESULT:Ljava/lang/String;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method public final onRefillOk()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->hideProgressDialog()V

    .line 115
    sget-object v0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->OK_RESULT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method protected final onStart()V
    .locals 3

    .line 52
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;->onStart()V

    .line 53
    sget-object v0, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->background:Lru/rocketbank/r2d2/widgets/BackgroundImageView;

    const-string v2, "binding.background"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadCover(Landroid/widget/ImageView;Lru/rocketbank/core/realm/UserData;)V

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setListener(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 58
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;->onStop()V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setListener(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;)V

    return-void
.end method
