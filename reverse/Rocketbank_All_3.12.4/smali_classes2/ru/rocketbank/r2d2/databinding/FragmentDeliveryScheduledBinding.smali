.class public Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentDeliveryScheduledBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final contentLayout:Landroid/widget/LinearLayout;

.field private mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

.field private mDirtyFlags:J

.field public final mapView:Lcom/google/android/gms/maps/MapView;

.field public final markerImg:Landroid/widget/ImageView;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final text:Lru/rocketbank/core/widgets/RocketTextView;

.field public final userPic:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09022c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090108

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09022d

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090400

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 156
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Lcom/google/android/gms/maps/MapView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x4

    .line 47
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->markerImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 48
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 49
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->text:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->text:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 52
    aget-object p1, p1, v0

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->userPic:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 1

    .line 176
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 2

    const-string v0, "layout/fragment_delivery_scheduled_0"

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
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

    .line 183
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 1

    .line 168
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 3

    const v0, 0x7f0c00d2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 1

    .line 160
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;
    .locals 1

    const v0, 0x7f0c00d2

    .line 164
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    return-object p0
.end method

.method private onChangeDataText(Landroid/databinding/ObservableField;I)Z
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

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    .line 113
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
    .locals 9

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 124
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    const-wide/16 v5, 0x7

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0, v4, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->text:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

    .line 105
    :cond_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
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

    .line 80
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
