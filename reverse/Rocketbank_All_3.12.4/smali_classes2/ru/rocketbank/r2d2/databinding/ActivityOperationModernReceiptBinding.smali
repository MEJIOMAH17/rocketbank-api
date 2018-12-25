.class public Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityOperationModernReceiptBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final header:Landroid/widget/FrameLayout;

.field public final headerOverlay:Landroid/view/View;

.field public final iconImage:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field public final iconLayout:Landroid/widget/FrameLayout;

.field private final mCallback10:Landroid/view/View$OnClickListener;

.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

.field private mReceipt:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field public final overlay:Landroid/view/View;

.field public final realToolbar:Landroid/support/v7/widget/Toolbar;

.field public final realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field public final sputnik:Lru/rocketbank/core/widgets/SquareLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final video:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090406

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09029d

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c3

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090294

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09034c

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b5

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090292

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x7

    .line 76
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 466
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 77
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x11

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 78
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 79
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 80
    aget-object v3, p1, v1

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->header:Landroid/widget/FrameLayout;

    .line 81
    iget-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->header:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xe

    .line 82
    aget-object v3, p1, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->headerOverlay:Landroid/view/View;

    const/16 v3, 0xf

    .line 83
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->iconImage:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const/16 v3, 0xa

    .line 84
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->iconLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 85
    aget-object v3, p1, v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 86
    iget-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 87
    aget-object v4, p1, v3

    check-cast v4, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 88
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x3

    .line 89
    aget-object v4, p1, v4

    check-cast v4, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 90
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x10

    .line 91
    aget-object v4, p1, v4

    check-cast v4, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/16 v4, 0xb

    .line 92
    aget-object v4, p1, v4

    check-cast v4, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const/16 v4, 0x9

    .line 93
    aget-object v4, p1, v4

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->overlay:Landroid/view/View;

    const/4 v4, 0x6

    .line 94
    aget-object v4, p1, v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    .line 95
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 96
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 98
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 100
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->sputnik:Lru/rocketbank/core/widgets/SquareLayout;

    const/16 v0, 0xd

    .line 101
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0x8

    .line 102
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->video:Landroid/view/TextureView;

    .line 103
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setRootTag(Landroid/view/View;)V

    .line 105
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v3}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mCallback11:Landroid/view/View$OnClickListener;

    .line 106
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mCallback10:Landroid/view/View$OnClickListener;

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 1

    .line 486
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 2

    const-string v0, "layout/activity_operation_modern_receipt_0"

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 1

    .line 478
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 3

    const v0, 0x7f0c0048

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 1

    .line 470
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;
    .locals 1

    const v0, 0x7f0c0048

    .line 474
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    return-object p0
.end method

.method private onChangeReceiptAmountValue(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 237
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptDataValue(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 210
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptParallaxTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 219
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptPlaceName(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 228
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptRocketAmountValue(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 192
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptTitleAmountValue(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 246
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeReceiptToolbarTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 201
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 442
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationActionHandler;->onRocketMoneyPressed()V

    return-void

    .line 449
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 459
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationActionHandler;->onMoneyPressed()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 29

    move-object/from16 v1, p0

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 257
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mReceipt:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    const-wide/16 v7, 0x37f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v12, 0x310

    const-wide/16 v14, 0x308

    const-wide/16 v16, 0x304

    const-wide/16 v18, 0x302

    const-wide/16 v20, 0x301

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    and-long v24, v2, v20

    cmp-long v7, v24, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 283
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getRocketAmountValue()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 285
    :goto_0
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 290
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v24, v2, v18

    cmp-long v26, v24, v4

    if-eqz v26, :cond_3

    if-eqz v6, :cond_2

    .line 297
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getToolbarTranslation()Landroid/databinding/ObservableInt;

    move-result-object v24

    move-object/from16 v8, v24

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x1

    .line 299
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 304
    invoke-virtual {v8}, Landroid/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-long v24, v2, v16

    cmp-long v9, v24, v4

    if-eqz v9, :cond_5

    if-eqz v6, :cond_4

    .line 311
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getDataValue()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v10, 0x2

    .line 313
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 318
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v10, v2, v14

    cmp-long v24, v10, v4

    if-eqz v24, :cond_7

    if-eqz v6, :cond_6

    .line 325
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getParallaxTranslation()Landroid/databinding/ObservableInt;

    move-result-object v10

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    const/4 v11, 0x3

    .line 327
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_7

    .line 332
    invoke-virtual {v10}, Landroid/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    and-long v24, v2, v12

    cmp-long v11, v24, v4

    if-eqz v11, :cond_9

    if-eqz v6, :cond_8

    .line 339
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getPlaceName()Landroid/databinding/ObservableField;

    move-result-object v11

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x4

    .line 341
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_9

    .line 346
    invoke-virtual {v11}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    const-wide/16 v12, 0x320

    and-long v24, v2, v12

    cmp-long v12, v24, v4

    if-eqz v12, :cond_b

    if-eqz v6, :cond_a

    .line 353
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getAmountValue()Landroid/databinding/ObservableField;

    move-result-object v12

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x5

    .line 355
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_b

    .line 360
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_b

    :cond_b
    const/4 v12, 0x0

    :goto_b
    const-wide/16 v22, 0x340

    and-long v24, v2, v22

    cmp-long v13, v24, v4

    if-eqz v13, :cond_d

    if-eqz v6, :cond_c

    .line 367
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->getTitleAmountValue()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    const/4 v13, 0x6

    .line 369
    invoke-virtual {v1, v13, v6}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_d

    .line 374
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_d
    const-wide/16 v24, 0x200

    and-long v26, v2, v24

    cmp-long v13, v26, v4

    if-eqz v13, :cond_f

    .line 382
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const-wide/16 v13, 0x320

    and-long v24, v2, v13

    cmp-long v13, v24, v4

    if-eqz v13, :cond_10

    .line 388
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v13, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_10
    const-wide/16 v12, 0x308

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const/16 v13, 0xb

    if-eqz v12, :cond_11

    .line 392
    invoke-static {}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->getBuildSdkInt()I

    move-result v12

    if-lt v12, v13, :cond_11

    .line 394
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->header:Landroid/widget/FrameLayout;

    int-to-float v10, v10

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_11
    const-wide/16 v14, 0x310

    and-long v24, v2, v14

    cmp-long v10, v24, v4

    if-eqz v10, :cond_12

    .line 400
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v10, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    and-long v10, v2, v16

    cmp-long v12, v10, v4

    if-eqz v12, :cond_13

    .line 405
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v10, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    and-long v9, v2, v18

    cmp-long v11, v9, v4

    if-eqz v11, :cond_14

    .line 409
    invoke-static {}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->getBuildSdkInt()I

    move-result v9

    if-lt v9, v13, :cond_14

    .line 411
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    :cond_14
    const-wide/16 v8, 0x340

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_15

    .line 417
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    and-long v8, v2, v20

    cmp-long v2, v8, v4

    if-eqz v2, :cond_16

    .line 422
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 258
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/operation/OperationActionHandler;
    .locals 1

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    return-object v0
.end method

.method public getReceipt()Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;
    .locals 1

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mReceipt:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 122
    monitor-exit p0

    return v0

    .line 124
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 112
    monitor-enter p0

    const-wide/16 v0, 0x200

    .line 113
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 184
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptTitleAmountValue(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 182
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptAmountValue(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 180
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptPlaceName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 178
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptParallaxTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 176
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptDataValue(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptToolbarTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 172
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->onChangeReceiptRocketAmountValue(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/root/operation/OperationActionHandler;)V
    .locals 6

    .line 144
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 148
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->notifyPropertyChanged(I)V

    .line 149
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setReceipt(Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;)V
    .locals 6

    .line 156
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mReceipt:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->mDirtyFlags:J

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x45

    .line 160
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->notifyPropertyChanged(I)V

    .line 161
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 159
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 132
    check-cast p2, Lru/rocketbank/r2d2/root/operation/OperationActionHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/OperationActionHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    if-ne v0, p1, :cond_1

    .line 135
    check-cast p2, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->setReceipt(Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
