.class public abstract Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;
.super Lru/rocketbank/r2d2/activities/ParallaxActivity;
.source "AbstractDetailOperationActivity.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;,
        Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Presenter::",
        "Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;",
        ">",
        "Lru/rocketbank/r2d2/activities/ParallaxActivity;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractDetailOperationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractDetailOperationActivity.kt\nru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity\n*L\n1#1,285:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

.field private static final OPERATION_EXTRA:Ljava/lang/String; = "OPERATION_EXTRA"

.field private static final OUT_STATE_COMMENT:Ljava/lang/String; = "COMMENT_TMP"

.field private static final OUT_STATE_COMMENT_SAVED:Ljava/lang/String; = "COMMENT_SAVED"

.field private static final TAG:Ljava/lang/String; = "OperationActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public barchartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

.field public binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

.field private final data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

.field private final handler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected sputnik:Landroid/view/View;

.field public statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->handler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    return-void
.end method

.method public static final synthetic access$getMediaPlayer$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .line 31
    iget-object p0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getOPERATION_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OPERATION_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOUT_STATE_COMMENT$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOUT_STATE_COMMENT_SAVED$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT_SAVED:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOperationPresenter$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 31
    iget-object p0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    if-nez p0, :cond_0

    const-string v0, "operationPresenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMediaPlayer$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$setOperationPresenter$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public abstract createPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method public dispatchClose()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->finish()V

    return-void
.end method

.method public dispatchHideProgress()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->hideProgressDialog()V

    return-void
.end method

.method public dispatchShowProgress()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->showProgressDialog()V

    return-void
.end method

.method public dispatchUpdate()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->clearAll()V

    .line 83
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->updateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const-string v2, "updateRunnable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract fillFullAdapter(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
.end method

.method public final getBarchartAdapter()Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;
    .locals 2

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->barchartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    if-nez v0, :cond_0

    const-string v1, "barchartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public final getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    return-object v0
.end method

.method public final getRawPath(I)Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getSputnik()Landroid/view/View;
    .locals 2

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->sputnik:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "sputnik"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getStatisticsAdapter()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;
    .locals 2

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-nez v0, :cond_0

    const-string v1, "statisticsAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public onCommentUpdateFinished(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "comment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getUpdateInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 65
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setCurrentComment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 95
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->updateRunnable:Ljava/lang/Runnable;

    .line 98
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->createPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    .line 100
    new-instance v0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->barchartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    .line 101
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0c0048

    invoke-static {v0, v2}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v2, "DataBindingUtil.setConte\u2026operation_modern_receipt)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setReceipt(Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;)V

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v2, "binding.toolbar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v2, :cond_2

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v3, "binding.realToolbar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v3, :cond_3

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->header:Landroid/widget/FrameLayout;

    const-string v4, "binding.header"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v0, v2, v3}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->setupView(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 109
    new-instance v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    if-nez v2, :cond_4

    const-string v3, "operationPresenter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    :cond_4
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    check-cast v3, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 111
    iget-object v4, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v4, :cond_5

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v4, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->header:Landroid/widget/FrameLayout;

    const-string v5, "binding.header"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getHeaderHeight()I

    move-result v5

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getStatusBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 109
    invoke-direct {v0, v2, v3, v4, v5}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;-><init>(Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    check-cast v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->setParallaxAdapter(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V

    :cond_6
    if-eqz p1, :cond_9

    .line 116
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setLastComment(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT_SAVED:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setCurrentComment(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_9
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    .line 119
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setCurrentComment(Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_b

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    new-instance v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_c

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string p1, "binding.operation"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    move-object v4, p1

    check-cast v4, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->createParallax$default(Lru/rocketbank/r2d2/activities/ParallaxActivity;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;IILjava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_d

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->video:Landroid/view/TextureView;

    const-string v0, "binding.video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->parallaxHeightToView(Landroid/view/View;)V

    .line 131
    new-instance p1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {p1, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 135
    new-instance v2, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v2, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060228

    .line 136
    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 137
    invoke-virtual {v2, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_e

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$4;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_10

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "binding.realToolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_11

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$5;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez p1, :cond_12

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sputnik:Lru/rocketbank/core/widgets/SquareLayout;

    const-string v0, "binding.sputnik"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->sputnik:Landroid/view/View;

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 4

    const-string v0, "operationViewInputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-nez v0, :cond_0

    const-string v1, "statisticsAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getShortListValues()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 205
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getFullListValues()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 206
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getTotal()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->setItems(Ljava/util/List;Ljava/util/List;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V

    .line 208
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->fillFullAdapter(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 209
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setCurrentComment(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getPlaceName()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getDataValue()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->barchartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    if-nez v0, :cond_2

    const-string v1, "barchartAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getMonthValues()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->setValues(Ljava/util/List;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->updateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    const-string v2, "updateRunnable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/OperationActionHandler;)V

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    if-nez v0, :cond_2

    const-string v1, "operationPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->onStop()V

    .line 186
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 159
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->onResume()V

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->video:Landroid/view/TextureView;

    const-string v1, "binding.video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-nez v0, :cond_1

    const-string v1, "statisticsAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->clear()V

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    if-nez v0, :cond_2

    const-string v1, "operationPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->onStart(Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    if-nez v1, :cond_4

    const-string v2, "operationPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/OperationActionHandler;)V

    .line 168
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getCurrentAdapter()Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT_SAVED:Ljava/lang/String;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getCurrentComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->OUT_STATE_COMMENT:Ljava/lang/String;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getLastComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 228
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const p1, 0x7f10004d

    .line 230
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 235
    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p3, :cond_0

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->reset()V

    .line 236
    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p3, :cond_1

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    const-string p3, "mediaPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    const-string p3, "mediaPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_4

    const-string p2, "mediaPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 241
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_5

    const-string p2, "mediaPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance p2, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onSurfaceTextureAvailable$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onSurfaceTextureAvailable$1;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V

    check-cast p2, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 219
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->scrollToTop(I)V

    return-void
.end method

.method public final setBarchartAdapter(Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->barchartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    return-void
.end method

.method public final setBinding(Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    return-void
.end method

.method protected final setSputnik(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->sputnik:Landroid/view/View;

    return-void
.end method

.method public final setStatisticsAdapter(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    return-void
.end method

.method public updateText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "money"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getAmountValue()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getRocketAmountValue()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->data:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getTitleAmountValue()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method
