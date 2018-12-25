.class public Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityDeliveryBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final container:Landroid/widget/FrameLayout;

.field public final include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

.field private mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

.field private mToolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final repeatButton:Lru/rocketbank/core/widgets/RocketButton;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "delivery_toolbar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x2

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c008c

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090103

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 282
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 48
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 49
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->container:Landroid/widget/FrameLayout;

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 54
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setRootTag(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 1

    .line 302
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 2

    const-string v0, "layout/activity_delivery_0"

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
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

    .line 309
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 1

    .line 294
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 3

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 1

    .line 286
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
    .locals 1

    const v0, 0x7f0c0038

    .line 290
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    return-object p0
.end method

.method private onChangeDataRepeatButtonVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 173
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

.method private onChangeInclude(Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 182
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
    .locals 19

    move-object/from16 v1, p0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 193
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 197
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 198
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mToolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    .line 199
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    const-wide/16 v10, 0x44

    and-long v12, v2, v10

    cmp-long v14, v12, v4

    if-eqz v14, :cond_1

    if-eqz v6, :cond_1

    .line 210
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

    if-nez v13, :cond_0

    new-instance v13, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

    invoke-direct {v13}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v13, v6}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;->setValue(Landroid/view/View$OnClickListener;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v13, 0x61

    and-long v15, v2, v13

    cmp-long v17, v15, v4

    const/4 v12, 0x0

    if-eqz v17, :cond_7

    if-eqz v9, :cond_2

    .line 223
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;->getRepeatButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 225
    :goto_2
    invoke-virtual {v1, v12, v9}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 230
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v12

    :goto_3
    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v9, :cond_4

    const-wide/16 v15, 0x100

    or-long v17, v2, v15

    :goto_4
    move-wide/from16 v2, v17

    goto :goto_5

    :cond_4
    const-wide/16 v15, 0x80

    or-long v17, v2, v15

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    const/16 v9, 0x8

    move v12, v9

    :cond_7
    :goto_6
    const-wide/16 v15, 0x48

    and-long v17, v2, v15

    cmp-long v9, v17, v4

    if-eqz v9, :cond_8

    .line 249
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {v9, v7}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_8
    const-wide/16 v15, 0x50

    and-long v17, v2, v15

    cmp-long v7, v17, v4

    if-eqz v7, :cond_9

    .line 254
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V

    :cond_9
    and-long v7, v2, v10

    cmp-long v9, v7, v4

    if-eqz v9, :cond_a

    .line 259
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    and-long v6, v2, v13

    cmp-long v2, v6, v4

    if-eqz v2, :cond_b

    .line 264
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 266
    :cond_b
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 194
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getToolbarData()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mToolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 74
    monitor-exit p0

    return v0

    .line 76
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 63
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 64
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->invalidateAll()V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 65
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

    .line 165
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->onChangeInclude(Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->onChangeDataRepeatButtonVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;)V
    .locals 6

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 145
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->notifyPropertyChanged(I)V

    .line 146
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 121
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->notifyPropertyChanged(I)V

    .line 122
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 6

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x3c

    .line 109
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V
    .locals 6

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mToolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x55

    .line 133
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->notifyPropertyChanged(I)V

    .line 134
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x3c

    if-ne v0, p1, :cond_0

    .line 87
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 90
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x55

    if-ne v0, p1, :cond_2

    .line 93
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setToolbarData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-ne v0, p1, :cond_3

    .line 96
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
