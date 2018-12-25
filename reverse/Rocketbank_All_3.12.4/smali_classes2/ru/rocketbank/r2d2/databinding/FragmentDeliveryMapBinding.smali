.class public Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentDeliveryMapBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final addressView:Lru/rocketbank/core/widgets/RocketAddressView;

.field public final addresses:Landroid/support/v7/widget/CardView;

.field public final addressesList:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final buttonLocation:Landroid/widget/Button;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

.field public final mapView:Lcom/google/android/gms/maps/MapView;

.field public final markerImg:Landroid/widget/ImageView;

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09022c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090041

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090042

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090043

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 262
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 50
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAddressView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    const/4 v1, 0x5

    .line 52
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->addresses:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x6

    .line 53
    aget-object v1, p1, v1

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->addressesList:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->buttonLocation:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->buttonLocation:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 56
    aget-object v0, p1, v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v0, 0x1

    .line 57
    aget-object v2, p1, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    .line 58
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 59
    aget-object p1, p1, v2

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->setRootTag(Landroid/view/View;)V

    .line 63
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mCallback3:Landroid/view/View$OnClickListener;

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 1

    .line 282
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 2

    const-string v0, "layout/fragment_delivery_map_0"

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
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

    .line 289
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 1

    .line 274
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 3

    const v0, 0x7f0c00d1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 1

    .line 266
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;
    .locals 1

    const v0, 0x7f0c00d1

    .line 270
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    return-object p0
.end method

.method private onChangeDataIsUserLead(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 148
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

.method private onChangeDataMyLocationHidden(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 139
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
    .locals 0

    .line 250
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 258
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;->onMyLocationButtonClicked()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 18

    move-object/from16 v1, p0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 159
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    const-wide/16 v7, 0x1b

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x1a

    const-wide/16 v10, 0x19

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_a

    and-long v14, v2, v10

    cmp-long v7, v14, v4

    if-eqz v7, :cond_4

    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;->getMyLocationHidden()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v12

    .line 179
    :goto_0
    invoke-virtual {v1, v13, v7}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 184
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v13

    :goto_1
    cmp-long v16, v14, v4

    if-eqz v16, :cond_3

    if-eqz v7, :cond_2

    const-wide/16 v14, 0x40

    or-long v16, v2, v14

    :goto_2
    move-wide/from16 v2, v16

    goto :goto_3

    :cond_2
    const-wide/16 v14, 0x20

    or-long v16, v2, v14

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    const/16 v7, 0x8

    goto :goto_4

    :cond_4
    move v7, v13

    :goto_4
    and-long v14, v2, v8

    cmp-long v16, v14, v4

    if-eqz v16, :cond_b

    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;->isUserLead()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    :cond_5
    const/4 v6, 0x1

    .line 205
    invoke-virtual {v1, v6, v12}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_6

    .line 210
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    :cond_6
    cmp-long v6, v14, v4

    if-eqz v6, :cond_8

    if-eqz v13, :cond_7

    const-wide/16 v14, 0x100

    or-long v16, v2, v14

    :goto_5
    move-wide/from16 v2, v16

    goto :goto_6

    :cond_7
    const-wide/16 v14, 0x80

    or-long v16, v2, v14

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz v13, :cond_9

    .line 223
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    const v12, 0x7f0801f6

    :goto_7
    invoke-static {v6, v12}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v12, v6

    goto :goto_8

    :cond_9
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    const v12, 0x7f0801f7

    goto :goto_7

    :cond_a
    move v7, v13

    :cond_b
    :goto_8
    and-long v13, v2, v10

    cmp-long v6, v13, v4

    if-eqz v6, :cond_c

    .line 230
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->buttonLocation:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    const-wide/16 v6, 0x10

    and-long v10, v2, v6

    cmp-long v6, v10, v4

    if-eqz v6, :cond_d

    .line 235
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->buttonLocation:Landroid/widget/Button;

    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    and-long v6, v2, v8

    cmp-long v2, v6, v4

    if-eqz v2, :cond_e

    .line 240
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 160
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;
    .locals 1

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 79
    monitor-exit p0

    return v0

    .line 81
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

    .line 69
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 70
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 71
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

    .line 131
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->onChangeDataIsUserLead(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 129
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->onChangeDataMyLocationHidden(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;)V
    .locals 6

    .line 113
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 117
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
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

    .line 89
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 92
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
