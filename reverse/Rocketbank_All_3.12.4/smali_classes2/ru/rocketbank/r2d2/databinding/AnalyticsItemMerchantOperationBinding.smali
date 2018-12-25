.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemMerchantOperationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final imageViewItem:Landroid/widget/ImageView;

.field private mAlpha:Ljava/lang/Float;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewItem:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 222
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 49
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 1

    .line 242
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 2

    const-string v0, "layout/analytics_item_merchant_operation_0"

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
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

    .line 249
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 1

    .line 234
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 3

    const v0, 0x7f0c0070

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 1

    .line 226
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 1

    const v0, 0x7f0c0070

    .line 230
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 126
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    .line 137
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mAlpha:Ljava/lang/Float;

    const-wide/16 v8, 0x7

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    const-wide/16 v10, 0x20

    const-wide/16 v13, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v12, :cond_9

    and-long v17, v2, v13

    cmp-long v12, v17, v4

    if-eqz v12, :cond_5

    if-eqz v6, :cond_0

    .line 146
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->getDate()Ljava/lang/String;

    move-result-object v15

    .line 148
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->getText()Ljava/lang/String;

    move-result-object v12

    .line 150
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->getAmount()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :cond_0
    move-object v12, v15

    move-object/from16 v19, v12

    :goto_0
    if-nez v15, :cond_1

    const/16 v20, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, v16

    :goto_1
    cmp-long v21, v17, v4

    if-eqz v21, :cond_3

    if-eqz v20, :cond_2

    const-wide/16 v17, 0x10

    or-long v21, v2, v17

    goto :goto_2

    :cond_2
    const-wide/16 v17, 0x8

    or-long v21, v2, v17

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v2

    :goto_2
    if-eqz v20, :cond_4

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    move/from16 v2, v16

    :goto_3
    move/from16 v17, v2

    move-object/from16 v18, v12

    move-object v12, v15

    move-object/from16 v15, v19

    move-wide/from16 v2, v21

    goto :goto_4

    :cond_5
    move-object v12, v15

    move-object/from16 v18, v12

    move/from16 v17, v16

    :goto_4
    if-eqz v6, :cond_6

    .line 172
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->isMine()Z

    move-result v6

    move/from16 v16, v6

    :cond_6
    and-long v19, v2, v8

    cmp-long v6, v19, v4

    if-eqz v6, :cond_8

    if-eqz v16, :cond_7

    const-wide/16 v19, 0x40

    or-long v21, v2, v19

    move/from16 v6, v16

    move/from16 v23, v17

    move-object/from16 v24, v18

    move-wide/from16 v2, v21

    goto :goto_5

    :cond_7
    or-long v19, v2, v10

    move/from16 v6, v16

    move/from16 v23, v17

    move-object/from16 v24, v18

    move-wide/from16 v2, v19

    goto :goto_5

    :cond_8
    move/from16 v6, v16

    move/from16 v23, v17

    move-object/from16 v24, v18

    goto :goto_5

    :cond_9
    move-object v12, v15

    move-object/from16 v24, v12

    move/from16 v6, v16

    move/from16 v23, v6

    :goto_5
    and-long v16, v2, v10

    cmp-long v10, v16, v4

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    .line 190
    invoke-static {v7}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v7

    goto :goto_6

    :cond_a
    move v7, v11

    :goto_6
    and-long v16, v2, v8

    cmp-long v8, v16, v4

    if-eqz v8, :cond_c

    if-eqz v6, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_b
    move v11, v7

    :cond_c
    cmp-long v7, v16, v4

    if-eqz v7, :cond_d

    .line 201
    invoke-static {}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->getBuildSdkInt()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_d

    .line 203
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 204
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setAlpha(F)V

    .line 205
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setAlpha(F)V

    .line 206
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setAlpha(F)V

    :cond_d
    and-long v7, v2, v13

    cmp-long v2, v7, v4

    if-eqz v2, :cond_e

    .line 212
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 213
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v3, v23

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 216
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v15, v24

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAlpha()Ljava/lang/Float;
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mAlpha:Ljava/lang/Float;

    return-object v0
.end method

.method public getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 59
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAlpha(Ljava/lang/Float;)V
    .locals 6

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mAlpha:Ljava/lang/Float;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 106
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;)V
    .locals 6

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
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

    .line 78
    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 81
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->setAlpha(Ljava/lang/Float;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
