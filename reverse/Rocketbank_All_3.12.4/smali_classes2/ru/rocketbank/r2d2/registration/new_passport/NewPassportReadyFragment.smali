.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;
.super Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;
.source "NewPassportReadyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;

.field private static final KEY_ID:Ljava/lang/String; = "ID"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private operationId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(J)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;->newInstance(J)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final getBottomButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getHelpText()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f1104d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.we_get_photos)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getMainButtonText()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f1103aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.ready)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getStep()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected final getStepImgRes()I
    .locals 1

    const v0, 0x7f0802a9

    return v0
.end method

.method protected final getStepTitle()Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f110311

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.new_passport_ready)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 26
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    move-object p1, v0

    :cond_2
    :goto_1
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->operationId:Ljava/lang/Long;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onMainButtonClicked()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->operationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->onReadyClicked(Ljava/lang/Long;)V

    return-void
.end method
