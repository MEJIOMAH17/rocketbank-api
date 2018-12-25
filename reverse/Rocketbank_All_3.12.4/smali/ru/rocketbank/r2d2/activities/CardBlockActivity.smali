.class public final Lru/rocketbank/r2d2/activities/CardBlockActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "CardBlockActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardBlockActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardBlockActivity.kt\nru/rocketbank/r2d2/activities/CardBlockActivity\n*L\n1#1,101:1\n*E\n"
.end annotation


# static fields
.field private static final BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final Companion:Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

.field public static final IS_BLOCK:Ljava/lang/String; = "is_block"

.field private static final IS_FROM_FEED:Ljava/lang/String; = "is_from_feed"

.field public static final PASSPORT_PHOTOS:I = 0x405


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private blockReason:Lru/rocketbank/core/model/enums/BlockReason;

.field private isFromFeed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->Companion:Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->isFromFeed:Z

    return-void
.end method

.method private final setBlockReason(Lru/rocketbank/core/model/enums/BlockReason;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->blockReason:Lru/rocketbank/core/model/enums/BlockReason;

    return-void
.end method

.method private final setFromFeed(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->isFromFeed:Z

    return-void
.end method

.method public static final start(Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;Z)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->Companion:Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;Z)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->Companion:Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;->start(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBlockReason()Lru/rocketbank/core/model/enums/BlockReason;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->blockReason:Lru/rocketbank/core/model/enums/BlockReason;

    return-object v0
.end method

.method public final isFromFeed()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->isFromFeed:Z

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x405

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 53
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class p3, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->goToHome(Landroid/app/Activity;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 24
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_from_feed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->isFromFeed:Z

    .line 28
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "block_reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    sget-object v0, Lru/rocketbank/core/model/enums/BlockReason;->Companion:Lru/rocketbank/core/model/enums/BlockReason$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/enums/BlockReason$Companion;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->blockReason:Lru/rocketbank/core/model/enums/BlockReason;

    .line 32
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/CardBlockActivity;->blockReason:Lru/rocketbank/core/model/enums/BlockReason;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->newCardblockFragment(Lru/rocketbank/core/model/enums/BlockReason;)Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090081

    .line 34
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected final onStart()V
    .locals 1

    .line 60
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->showProgressDialog()V

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method

.method protected final onStop()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->hideProgressDialog()V

    .line 68
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->hideProgressDialog()V

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getStatus()Lru/rocketbank/core/model/enums/Status;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/model/enums/Status;->ACTIVE:Lru/rocketbank/core/model/enums/Status;

    if-ne p1, v0, :cond_0

    .line 44
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    return-void
.end method
