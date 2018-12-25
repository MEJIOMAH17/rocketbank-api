.class public Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityCardTransferProcessBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final finishButton:Landroid/support/v7/widget/CardView;

.field public final include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

.field public final loader:Lru/rocketbank/core/widgets/RocketLoader;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mProcessData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

.field private mProcessHandler:Lru/rocketbank/r2d2/data/binding/ProcessHandler;

.field private mProcessHandlerOnClosePressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

.field private mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field public final message:Lru/rocketbank/core/widgets/RocketTextView;

.field public final ready:Lru/rocketbank/core/widgets/RocketTextView;

.field public final repeat:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x5

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09017b

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090225

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x4

    .line 57
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 367
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 58
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 59
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->finishButton:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x5

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 61
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x7

    .line 62
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const/4 v1, 0x0

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 65
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->message:Lru/rocketbank/core/widgets/RocketTextView;

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->message:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->ready:Lru/rocketbank/core/widgets/RocketTextView;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->ready:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 71
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->repeat:Lru/rocketbank/core/widgets/RocketTextView;

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->repeat:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setRootTag(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 1

    .line 387
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 2

    const-string v0, "layout/activity_card_transfer_process_0"

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
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

    .line 394
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 1

    .line 379
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 3

    const v0, 0x7f0c002d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 1

    .line 371
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;
    .locals 1

    const v0, 0x7f0c002d

    .line 375
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    return-object p0
.end method

.method private onChangeInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 212
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

.method private onChangeProcessDataButtonsVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 221
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

.method private onChangeProcessDataMessageText(Landroid/databinding/ObservableField;I)Z
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

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 194
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

.method private onChangeProcessDataRetryVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 203
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
.method protected executeBindings()V
    .locals 28

    move-object/from16 v1, p0

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 232
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 240
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 241
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandler:Lru/rocketbank/r2d2/data/binding/ProcessHandler;

    .line 242
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    const-wide/16 v10, 0x140

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    .line 257
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnClosePressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

    if-nez v10, :cond_0

    new-instance v10, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

    invoke-direct {v10}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;-><init>()V

    iput-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnClosePressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnClosePressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v10, v8}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/ProcessHandler;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl;

    move-result-object v10

    .line 259
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

    if-nez v14, :cond_1

    new-instance v14, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

    invoke-direct {v14}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;-><init>()V

    iput-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v14, v8}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/ProcessHandler;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding$OnClickListenerImpl1;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    const-wide/16 v14, 0x18b

    and-long v16, v2, v14

    cmp-long v14, v16, v4

    const-wide/16 v15, 0x188

    const-wide/16 v17, 0x182

    const-wide/16 v19, 0x181

    const/4 v11, 0x0

    if-eqz v14, :cond_9

    and-long v22, v2, v19

    cmp-long v14, v22, v4

    if-eqz v14, :cond_4

    if-eqz v9, :cond_3

    .line 269
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getMessageText()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 271
    :goto_3
    invoke-virtual {v1, v11, v14}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_4

    .line 276
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    and-long v22, v2, v17

    cmp-long v24, v22, v4

    if-eqz v24, :cond_6

    if-eqz v9, :cond_5

    .line 283
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getRetryVisible()Landroid/databinding/ObservableInt;

    move-result-object v22

    move-object/from16 v11, v22

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    const/4 v4, 0x1

    .line 285
    invoke-virtual {v1, v4, v11}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_6

    .line 290
    invoke-virtual {v11}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    move v11, v4

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    and-long v4, v2, v15

    const-wide/16 v22, 0x0

    cmp-long v24, v4, v22

    if-eqz v24, :cond_8

    if-eqz v9, :cond_7

    .line 297
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getButtonsVisible()Landroid/databinding/ObservableInt;

    move-result-object v4

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    const/4 v5, 0x3

    .line 299
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_8

    .line 304
    invoke-virtual {v4}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_8
    const-wide/16 v21, 0x120

    and-long v23, v2, v21

    const-wide/16 v21, 0x0

    cmp-long v5, v23, v21

    if-eqz v5, :cond_a

    .line 312
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v5, v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_a
    const-wide/16 v23, 0x110

    and-long v25, v2, v23

    cmp-long v5, v25, v21

    if-eqz v5, :cond_b

    .line 317
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v5, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    :cond_b
    and-long v5, v2, v15

    cmp-long v7, v5, v21

    if-eqz v7, :cond_c

    .line 322
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_c
    and-long v4, v2, v19

    cmp-long v6, v4, v21

    if-eqz v6, :cond_d

    .line 327
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->message:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    cmp-long v4, v12, v21

    if-eqz v4, :cond_e

    .line 332
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->ready:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->repeat:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    and-long v4, v2, v17

    cmp-long v2, v4, v21

    if-eqz v2, :cond_f

    .line 338
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->repeat:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 340
    :cond_f
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 233
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getProcessData()Lru/rocketbank/r2d2/data/binding/ProcessActivityData;
    .locals 1

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    return-object v0
.end method

.method public getProcessHandler()Lru/rocketbank/r2d2/data/binding/ProcessHandler;
    .locals 1

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandler:Lru/rocketbank/r2d2/data/binding/ProcessHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 91
    monitor-exit p0

    return v0

    .line 93
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 80
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 81
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 82
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

    .line 186
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->onChangeProcessDataButtonsVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->onChangeInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    .line 182
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->onChangeProcessDataRetryVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 180
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->onChangeProcessDataMessageText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 134
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 138
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->notifyPropertyChanged(I)V

    .line 139
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setProcessData(Lru/rocketbank/r2d2/data/binding/ProcessActivityData;)V
    .locals 6

    .line 158
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x41

    .line 162
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->notifyPropertyChanged(I)V

    .line 163
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setProcessHandler(Lru/rocketbank/r2d2/data/binding/ProcessHandler;)V
    .locals 6

    .line 146
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mProcessHandler:Lru/rocketbank/r2d2/data/binding/ProcessHandler;

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x42

    .line 150
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->notifyPropertyChanged(I)V

    .line 151
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 122
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 126
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne v0, p1, :cond_0

    .line 104
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 107
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    if-ne v0, p1, :cond_2

    .line 110
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ProcessHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setProcessHandler(Lru/rocketbank/r2d2/data/binding/ProcessHandler;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x41

    if-ne v0, p1, :cond_3

    .line 113
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setProcessData(Lru/rocketbank/r2d2/data/binding/ProcessActivityData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
