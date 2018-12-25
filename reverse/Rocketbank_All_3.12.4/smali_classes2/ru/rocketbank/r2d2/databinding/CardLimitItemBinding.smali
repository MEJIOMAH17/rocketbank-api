.class public Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "CardLimitItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final imageView:Landroid/widget/ImageView;

.field private mData:Lru/rocketbank/r2d2/activities/card/CardLimitData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final switchCompat:Landroid/support/v7/widget/SwitchCompat;

.field public final textView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 198
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 37
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->imageView:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 39
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 1

    .line 218
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 2

    const-string v0, "layout/card_limit_item_0"

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
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

    .line 225
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 1

    .line 210
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 3

    const v0, 0x7f0c007d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 1

    .line 202
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;
    .locals 1

    const v0, 0x7f0c007d

    .line 206
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    return-object p0
.end method

.method private onChangeDataEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    .line 105
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
    .locals 21

    move-object/from16 v1, p0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 116
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const-wide/16 v8, 0x7

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    const-wide/16 v13, 0x6

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x10

    const/4 v6, 0x0

    if-eqz v12, :cond_5

    if-eqz v7, :cond_0

    .line 133
    invoke-virtual {v7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 135
    :goto_0
    invoke-virtual {v1, v6, v12}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_1

    .line 140
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v6

    :goto_1
    cmp-long v19, v10, v4

    if-eqz v19, :cond_3

    if-eqz v12, :cond_2

    or-long v10, v2, v17

    :goto_2
    move-wide v2, v10

    goto :goto_3

    :cond_2
    or-long v10, v2, v15

    goto :goto_2

    :cond_3
    :goto_3
    and-long v10, v2, v13

    cmp-long v19, v10, v4

    if-eqz v19, :cond_4

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getTitle()I

    move-result v10

    .line 156
    invoke-virtual {v7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getIcon()I

    move-result v11

    goto :goto_4

    :cond_4
    move v10, v6

    move v11, v10

    goto :goto_4

    :cond_5
    move v10, v6

    move v11, v10

    move v12, v11

    :goto_4
    and-long v19, v2, v15

    cmp-long v15, v19, v4

    if-eqz v15, :cond_6

    if-eqz v7, :cond_6

    .line 166
    invoke-virtual {v7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getTextDisabled()I

    move-result v15

    goto :goto_5

    :cond_6
    move v15, v6

    :goto_5
    and-long v19, v2, v17

    cmp-long v16, v19, v4

    if-eqz v16, :cond_7

    if-eqz v7, :cond_7

    .line 173
    invoke-virtual {v7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getTextEnabled()I

    move-result v7

    goto :goto_6

    :cond_7
    move v7, v6

    :goto_6
    and-long v16, v2, v8

    cmp-long v8, v16, v4

    if-eqz v8, :cond_9

    if-eqz v12, :cond_8

    move v6, v7

    goto :goto_7

    :cond_8
    move v6, v15

    :cond_9
    :goto_7
    and-long v7, v2, v13

    cmp-long v2, v7, v4

    if-eqz v2, :cond_a

    .line 186
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {v2, v11}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewResource(Landroid/widget/ImageView;I)V

    .line 187
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v10}, Landroid/support/v7/widget/SwitchCompat;->setText(I)V

    :cond_a
    cmp-long v2, v16, v4

    if-eqz v2, :cond_b

    .line 192
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

    .line 97
    :cond_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->onChangeDataEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
