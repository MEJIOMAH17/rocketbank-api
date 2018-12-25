.class public Lru/rocketbank/r2d2/fragments/RocketFragment;
.super Landroid/support/v4/app/Fragment;
.source "RocketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/RocketFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketFragment.kt\nru/rocketbank/r2d2/fragments/RocketFragment\n*L\n1#1,252:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/RocketFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "RocketFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private _dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

.field private final injector:Lru/rocketbank/core/dagger/component/RocketComponent;

.field private final localEventBus:Lde/greenrobot/event/EventBus;

.field private userSubsctiption:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/RocketFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/RocketFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/RocketFragment;->Companion:Lru/rocketbank/r2d2/fragments/RocketFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    return-void
.end method

.method public static bridge synthetic showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showSpinner"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const p1, 0x7f110385

    .line 125
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner(I)V

    return-void
.end method

.method public static bridge synthetic showSpinnerText$default(Lru/rocketbank/r2d2/fragments/RocketFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showSpinnerText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinnerText(Ljava/lang/String;)V

    return-void
.end method

.method private final subscribeToUser()V
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    .line 45
    new-instance v1, Lru/rocketbank/r2d2/fragments/RocketFragment$subscribeToUser$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/RocketFragment$subscribeToUser$1;-><init>(Lru/rocketbank/r2d2/fragments/RocketFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->userSubsctiption:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public canBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    return-object v0
.end method

.method protected final getLocalEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public final getNavigationClick()Landroid/view/View$OnClickListener;
    .locals 1

    .line 213
    new-instance v0, Lru/rocketbank/r2d2/fragments/RocketFragment$navigationClick$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/RocketFragment$navigationClick$1;-><init>(Lru/rocketbank/r2d2/fragments/RocketFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getStatusBarHeight()I
    .locals 4

    .line 204
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hideSpinner()V
    .locals 3

    .line 160
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RocketFragment"

    const-string v2, "Log hide spinner "

    .line 165
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public isCanPopBack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveBack()V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setHasOptionsMenu(Z)V

    const-string p1, "Create fragment "

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEvent(Landroid/view/DragEvent;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "RocketFragment"

    const-string v1, "Unregister event bus"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->unregisterEventBus()V

    const-string v0, "RocketFragment"

    const-string v1, "Unsubsribe user subscription"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->userSubsctiption:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->unsubscribe(Lrx/Subscription;)V

    const-string v0, "RocketFragment"

    const-string v1, "Done go to super"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->subscribeToUser()V

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->registerEventBus()V

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final registerEventBus()V
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 104
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 182
    :cond_2
    instance-of p1, v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-eqz p1, :cond_3

    .line 183
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->setActionButtonIcon()V

    :cond_3
    return-void
.end method

.method protected setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 190
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_0
    return v0
.end method

.method protected final setupDefaultToolbar(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, p1, p2, v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setupDefaultToolbar(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method public final setupDefaultToolbar(Landroid/view/View;IZ)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 224
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p3, :cond_2

    .line 225
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getStatusBarHeight()I

    move-result v0

    .line 227
    :cond_2
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    move-result p2

    .line 228
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    return p2
.end method

.method protected final showAlert(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->create(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final showSpinner()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    return-void
.end method

.method protected final showSpinner(I)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v1, :cond_4

    .line 135
    sget-object v1, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->Companion:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;->newInstance(I)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 136
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method protected final showSpinnerText()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinnerText$default(Lru/rocketbank/r2d2/fragments/RocketFragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected final showSpinnerText(Ljava/lang/String;)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 150
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v2, :cond_3

    .line 151
    sget-object v2, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->Companion:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f110385

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "resources.getString(R.string.please_wait)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, p1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->_dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final unregisterEventBus()V
    .locals 1

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RocketFragment;->localEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final unsubscribe(Lrx/Subscription;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
