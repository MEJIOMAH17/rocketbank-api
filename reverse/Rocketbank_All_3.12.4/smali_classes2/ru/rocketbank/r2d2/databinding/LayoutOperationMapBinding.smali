.class public Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutOperationMapBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback26:Landroid/view/View$OnClickListener;

.field private final mCallback27:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

.field public final map:Lcom/google/android/gms/maps/MapView;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final minus:Landroid/widget/ImageView;

.field public final plus:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09022b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 163
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Lcom/google/android/gms/maps/MapView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->map:Lcom/google/android/gms/maps/MapView;

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 45
    aget-object v2, p1, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->minus:Landroid/widget/ImageView;

    .line 46
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->minus:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 47
    aget-object p1, p1, v2

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->plus:Landroid/widget/ImageView;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->plus:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mCallback27:Landroid/view/View$OnClickListener;

    .line 52
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mCallback26:Landroid/view/View$OnClickListener;

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 1

    .line 183
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 2

    const-string v0, "layout/layout_operation_map_0"

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
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

    .line 190
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 1

    .line 175
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 3

    const v0, 0x7f0c0134

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 1

    .line 167
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;
    .locals 1

    const v0, 0x7f0c0134

    .line 171
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 139
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/MapHandler;->onZoomOut()V

    return-void

    .line 146
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 156
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/MapHandler;->onZoomIn()V

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
    .locals 8

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 111
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->minus:Landroid/widget/ImageView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mCallback27:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->plus:Landroid/widget/ImageView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mCallback26:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/operation/vh/MapHandler;
    .locals 1

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    .line 59
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->requestRebind()V

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

.method public setHandler(Lru/rocketbank/r2d2/root/operation/vh/MapHandler;)V
    .locals 6

    .line 87
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 91
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 90
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

    .line 78
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/MapHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
