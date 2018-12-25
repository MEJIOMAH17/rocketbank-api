.class public Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;
.super Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
.source "FragmentDeliveryDateBindingV21Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ec

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09031c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090357

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901fa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x5

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lru/rocketbank/core/widgets/RocketButton;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lru/rocketbank/core/widgets/RocketCalendarView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/LinearLayout;Lru/rocketbank/core/widgets/RocketButton;Lru/rocketbank/core/widgets/RocketCalendarView;Landroid/view/View;Lru/rocketbank/core/widgets/RocketTextView;)V

    const-wide/16 v0, -0x1

    .line 182
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 43
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->nextButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, p3}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->invalidateAll()V

    return-void
.end method

.method private onChangeDataNextButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    .line 112
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
    .locals 14

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mListener:Landroid/view/View$OnClickListener;

    .line 129
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    const-wide/16 v6, 0xa

    and-long v8, v0, v6

    cmp-long v6, v8, v2

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 137
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

    if-nez v6, :cond_0

    new-instance v6, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

    invoke-direct {v6}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;-><init>()V

    iput-object v6, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mListenerOnClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v6, v4}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;->setValue(Landroid/view/View$OnClickListener;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl$OnClickListenerImpl;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_1
    const-wide/16 v10, 0xd

    and-long v12, v0, v10

    cmp-long v0, v12, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_2

    .line 146
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;->getNextButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    .line 148
    :cond_2
    invoke-virtual {p0, v1, v7}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_3

    .line 153
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v1

    :cond_3
    cmp-long v0, v12, v2

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->nextButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_4
    cmp-long v0, v8, v2

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->nextButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->requestRebind()V

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

    .line 104
    :cond_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->onChangeDataNextButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;)V
    .locals 6

    .line 92
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 96
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 6

    .line 84
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mListener:Landroid/view/View$OnClickListener;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 88
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->setListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 75
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
