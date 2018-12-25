.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemHeaderBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;,
        Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

.field private mItemOnDateClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

.field private mItemOnLeftArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

.field private mItemOnRightArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

.field private mOldItemAmount:I

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/ImageButton;

.field private final mboundView4:Landroid/widget/ProgressBar;

.field private final mboundView5:Landroid/widget/ImageButton;

.field public final textViewHeader:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewPeriodName:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 287
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView1:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView4:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView4:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView5:Landroid/widget/ImageButton;

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView5:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 53
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewHeader:Lru/rocketbank/core/widgets/RocketTextView;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewHeader:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 55
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewPeriodName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewPeriodName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 1

    .line 307
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 2

    const-string v0, "layout/analytics_item_header_0"

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
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

    .line 314
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 1

    .line 299
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 3

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 1

    .line 291
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 1

    const v0, 0x7f0c006f

    .line 295
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    return-object p0
.end method

.method private onChangeItemInProgress(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    .line 117
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
    .locals 29

    move-object/from16 v1, p0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 128
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    const-wide/16 v7, 0x7

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const-wide/16 v12, 0x6

    const/4 v15, 0x0

    if-eqz v11, :cond_14

    if-eqz v6, :cond_2

    .line 152
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnLeftArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnLeftArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnLeftArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl;

    move-result-object v11

    .line 154
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v16

    .line 156
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnRightArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

    if-nez v14, :cond_1

    new-instance v14, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

    invoke-direct {v14}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;-><init>()V

    iput-object v14, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnRightArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

    goto :goto_1

    :cond_1
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnRightArrowClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

    :goto_1
    invoke-virtual {v14, v6}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;->setValue(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl2;

    move-result-object v14

    move-object/from16 v28, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v28

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 158
    :goto_2
    invoke-virtual {v1, v15, v11}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_3

    .line 163
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_3

    :cond_3
    move v11, v15

    :goto_3
    cmp-long v18, v9, v4

    if-eqz v18, :cond_5

    if-eqz v11, :cond_4

    const-wide/16 v9, 0x100

    or-long v18, v2, v9

    goto :goto_4

    :cond_4
    const-wide/16 v9, 0x80

    or-long v18, v2, v9

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v2

    :goto_4
    if-nez v11, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v15

    :goto_5
    const/16 v3, 0x8

    if-eqz v11, :cond_7

    move v9, v15

    goto :goto_6

    :cond_7
    move v9, v3

    :goto_6
    and-long v10, v18, v7

    cmp-long v20, v10, v4

    if-eqz v20, :cond_9

    if-eqz v2, :cond_8

    const-wide/16 v10, 0x400

    or-long v20, v18, v10

    goto :goto_7

    :cond_8
    const-wide/16 v10, 0x200

    or-long v20, v18, v10

    goto :goto_7

    :cond_9
    move-wide/from16 v20, v18

    :goto_7
    if-eqz v2, :cond_a

    move v10, v15

    goto :goto_8

    :cond_a
    move v10, v3

    :goto_8
    and-long v18, v20, v12

    cmp-long v11, v18, v4

    if-eqz v11, :cond_13

    if-eqz v6, :cond_c

    .line 195
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnDateClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

    if-nez v11, :cond_b

    new-instance v11, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnDateClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

    goto :goto_9

    :cond_b
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItemOnDateClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

    :goto_9
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;

    move-result-object v11

    .line 197
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getPeriod()Ljava/lang/String;

    move-result-object v17

    .line 199
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getPrevPeriodExists()Z

    move-result v22

    .line 201
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getNextPeriodExists()Z

    move-result v23

    .line 203
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getAmount()I

    move-result v6

    move-object/from16 v28, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v28

    goto :goto_a

    :cond_c
    move v6, v15

    move/from16 v22, v6

    move/from16 v23, v22

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_a
    cmp-long v24, v18, v4

    if-eqz v24, :cond_e

    if-eqz v22, :cond_d

    const-wide/16 v18, 0x40

    or-long v24, v20, v18

    goto :goto_b

    :cond_d
    const-wide/16 v18, 0x20

    or-long v24, v20, v18

    goto :goto_b

    :cond_e
    move-wide/from16 v24, v20

    :goto_b
    and-long v18, v24, v12

    cmp-long v20, v18, v4

    if-eqz v20, :cond_10

    if-eqz v23, :cond_f

    const-wide/16 v18, 0x10

    or-long v20, v24, v18

    goto :goto_c

    :cond_f
    const-wide/16 v18, 0x8

    or-long v20, v24, v18

    goto :goto_c

    :cond_10
    move-wide/from16 v20, v24

    :goto_c
    if-eqz v22, :cond_11

    move/from16 v18, v15

    goto :goto_d

    :cond_11
    move/from16 v18, v3

    :goto_d
    if-eqz v23, :cond_12

    goto :goto_e

    :cond_12
    move v15, v3

    :goto_e
    move/from16 v27, v10

    move-object/from16 v26, v14

    move-object/from16 v3, v17

    move v10, v2

    move v14, v9

    move v2, v15

    move-object/from16 v9, v16

    move/from16 v15, v18

    goto :goto_f

    :cond_13
    move/from16 v27, v10

    move-object/from16 v26, v14

    move v6, v15

    const/4 v3, 0x0

    const/4 v11, 0x0

    move v10, v2

    move v14, v9

    move v2, v6

    move-object/from16 v9, v16

    goto :goto_f

    :cond_14
    move-wide/from16 v20, v2

    move v2, v15

    move v6, v2

    move v10, v6

    move v14, v10

    move/from16 v27, v14

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    :goto_f
    and-long v16, v20, v12

    cmp-long v12, v16, v4

    if-eqz v12, :cond_15

    .line 233
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView5:Landroid/widget/ImageButton;

    invoke-virtual {v12, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewHeader:Lru/rocketbank/core/widgets/RocketTextView;

    iget v12, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mOldItemAmount:I

    invoke-static {v2, v12, v6}, Lru/rocketbank/r2d2/utils/BindingUtils;->textAmount(Lru/rocketbank/core/widgets/RocketTextView;II)V

    .line 236
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewPeriodName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewPeriodName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    and-long v2, v20, v7

    cmp-long v7, v2, v4

    if-eqz v7, :cond_16

    .line 242
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView1:Landroid/widget/ImageButton;

    invoke-static {v2, v9, v10}, Landroid/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 243
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView4:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mboundView5:Landroid/widget/ImageButton;

    move-object/from16 v14, v26

    invoke-static {v2, v14, v10}, Landroid/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 245
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->textViewHeader:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v10, v27

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_16
    cmp-long v2, v16, v4

    if-eqz v2, :cond_17

    .line 248
    iput v6, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mOldItemAmount:I

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 129
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 74
    monitor-exit p0

    return v0

    .line 76
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

    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 65
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->onChangeItemInProgress(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
.end method

.method public setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x31

    if-ne v0, p1, :cond_0

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
