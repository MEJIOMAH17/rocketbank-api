.class public Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;
.super Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
.source "CardTransferHeaderLayoutBindingLargeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

.field private mDirtyFlags:J

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090112

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x3

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lru/rocketbank/core/widgets/CreditCardView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILru/rocketbank/core/widgets/RocketTextView;Landroid/widget/LinearLayout;Lru/rocketbank/core/widgets/CreditCardView;Lru/rocketbank/core/widgets/RocketTextView;)V

    const-wide/16 v0, -0x1

    .line 246
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 38
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->cardRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->setRootTag(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 132
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

.method private onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 114
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

.method private onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 123
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
    .locals 23

    move-object/from16 v1, p0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 143
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 150
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const-wide/16 v8, 0x28

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 161
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

    if-nez v8, :cond_0

    new-instance v8, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

    invoke-direct {v8}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v12, 0x37

    and-long v14, v2, v12

    cmp-long v8, v14, v4

    const-wide/16 v12, 0x34

    const-wide/16 v14, 0x32

    const-wide/16 v16, 0x31

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    and-long v19, v2, v16

    cmp-long v8, v19, v4

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    .line 171
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getOrVisible()Landroid/databinding/ObservableInt;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 173
    :goto_2
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 178
    invoke-virtual {v8}, Landroid/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_3

    :cond_3
    move v8, v9

    :goto_3
    and-long v19, v2, v14

    cmp-long v21, v19, v4

    if-eqz v21, :cond_5

    if-eqz v7, :cond_4

    .line 185
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getPhotoVisible()Landroid/databinding/ObservableInt;

    move-result-object v19

    move-object/from16 v9, v19

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v14, 0x1

    .line 187
    invoke-virtual {v1, v14, v9}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 192
    invoke-virtual {v9}, Landroid/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v14, v2, v12

    cmp-long v19, v14, v4

    if-eqz v19, :cond_7

    if-eqz v7, :cond_6

    .line 199
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getNfcVisible()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    const/4 v14, 0x2

    .line 201
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_7

    .line 206
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    const-wide/16 v14, 0x32

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    and-long v18, v2, v14

    cmp-long v14, v18, v4

    if-eqz v14, :cond_9

    .line 214
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v14, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_9
    cmp-long v9, v10, v4

    if-eqz v9, :cond_a

    .line 219
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v9, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    and-long v9, v2, v16

    cmp-long v6, v9, v4

    if-eqz v6, :cond_b

    .line 224
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_b
    and-long v8, v2, v12

    cmp-long v2, v8, v4

    if-eqz v2, :cond_c

    .line 229
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 60
    monitor-exit p0

    return v0

    .line 62
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

    .line 50
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 51
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 52
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

    .line 106
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V
    .locals 6

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->requestRebind()V

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

.method public setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 6

    .line 82
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 86
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 70
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 73
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
