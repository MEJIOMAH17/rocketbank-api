.class public Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListItemCardHeaderBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mData:Lru/rocketbank/r2d2/root/feed/FeedModel;

.field private mDirtyFlags:J

.field public final stub:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 136
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    .line 30
    sget-object v1, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->stub:Landroid/view/View;

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->stub:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->setRootTag(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 1

    .line 156
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 2

    const-string v0, "layout/list_item_card_header_0"

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
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

    .line 163
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 1

    .line 148
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 3

    const v0, 0x7f0c014b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 1

    .line 140
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 1

    const v0, 0x7f0c014b

    .line 144
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    return-object p0
.end method

.method private onChangeDataOverlayBackground(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    .line 93
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
    .locals 10

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 104
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 108
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mData:Lru/rocketbank/r2d2/root/feed/FeedModel;

    const-wide/16 v6, 0x7

    and-long v8, v0, v6

    cmp-long v0, v8, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v5}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getOverlayBackground()Landroid/databinding/ObservableInt;

    move-result-object v4

    .line 118
    :cond_0
    invoke-virtual {p0, v1, v4}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v4}, Landroid/databinding/ObservableInt;->get()I

    move-result v1

    :cond_1
    cmp-long v0, v8, v2

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->stub:Landroid/view/View;

    invoke-static {v1}, Landroid/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/root/feed/FeedModel;
    .locals 1

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mData:Lru/rocketbank/r2d2/root/feed/FeedModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 50
    monitor-exit p0

    return v0

    .line 52
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

    .line 40
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 41
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 42
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

    .line 85
    :cond_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->onChangeDataOverlayBackground(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/root/feed/FeedModel;)V
    .locals 6

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mData:Lru/rocketbank/r2d2/root/feed/FeedModel;

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->mDirtyFlags:J

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 73
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->notifyPropertyChanged(I)V

    .line 74
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
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

    .line 60
    check-cast p2, Lru/rocketbank/r2d2/root/feed/FeedModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->setData(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
