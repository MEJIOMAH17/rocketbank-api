.class public abstract Lru/rocketbank/r2d2/activities/SecuredActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "SecuredActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecuredActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecuredActivity.kt\nru/rocketbank/r2d2/activities/SecuredActivity\n*L\n1#1,155:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;

.field private static final KEEP_UNLOCKED:Ljava/lang/String; = "KEEP_UNLOCKED"

.field private static final LOCK_SCREEN_TAG:Ljava/lang/String; = "CodeInputDialog"

.field private static final TAG:Ljava/lang/String; = "SecuredActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private keepUnlocked:Z

.field private final securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->Companion:Lru/rocketbank/r2d2/activities/SecuredActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->Companion:Lru/rocketbank/r2d2/manager/SecurityManager$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/SecurityManager$Companion;->getInstance()Lru/rocketbank/r2d2/manager/SecurityManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    return-void
.end method

.method public static final synthetic access$getLOCK_SCREEN_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->LOCK_SCREEN_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getErrorString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v1, 0x7f11018d

    if-eqz v0, :cond_2

    .line 119
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 121
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "if (genericRequestRespon\u2026rror_occur)\n            }"

    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 125
    :cond_2
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.error_occur)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final keepUnlocked()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked:Z

    return-void
.end method

.method public final lockScreen()V
    .locals 4

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->resetToken()V

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 78
    sget-object v1, Lru/rocketbank/r2d2/activities/SecuredActivity;->LOCK_SCREEN_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 80
    new-instance v2, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {v2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;-><init>()V

    check-cast v2, Landroid/support/v4/app/Fragment;

    sget-object v3, Lru/rocketbank/r2d2/activities/SecuredActivity;->LOCK_SCREEN_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 82
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 61
    sget-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->KEEP_UNLOCKED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked:Z

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/manager/SecurityManager;->onRestoreInstance(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/event/LockEvent;)V
    .locals 1

    const-string v0, "lockEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->lockScreen()V

    .line 68
    sget-object p1, Lru/rocketbank/r2d2/activities/SecuredActivity;->TAG:Ljava/lang/String;

    const-string v0, "lock screen by LockEvent"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/SecurityManager;->onPause()V

    .line 46
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/manager/SecurityManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    sget-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->KEEP_UNLOCKED:Ljava/lang/String;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    const-string v1, "lead_status"

    .line 28
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 33
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/SecurityManager;->onStart()V

    .line 35
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->securityManager:Lru/rocketbank/r2d2/manager/SecurityManager;

    iget-boolean v2, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked:Z

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/manager/SecurityManager;->isLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->lockScreen()V

    .line 37
    sget-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->TAG:Ljava/lang/String;

    const-string v1, "lock screen by SecurityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked:Z

    .line 41
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onStart()V

    return-void
.end method

.method protected final setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 111
    sget-object v0, Lru/rocketbank/r2d2/activities/SecuredActivity;->TAG:Ljava/lang/String;

    const-string v1, "Oh, no!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V
    .locals 2

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 130
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final setupDefaultToolbar(I)V
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 143
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getStatusBarHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 144
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method protected final setupDefaultToolbar(Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/SecuredActivity;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 138
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 88
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ImageUpload;->getFROM_CAMERA()I

    move-result v0

    and-int/2addr v0, p2

    sget-object v1, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ImageUpload;->getFROM_GALLERY()I

    move-result v1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked()V

    .line 95
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/AbstractActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
