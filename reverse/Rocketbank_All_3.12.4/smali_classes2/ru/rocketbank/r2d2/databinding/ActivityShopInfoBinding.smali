.class public Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityShopInfoBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final fullscreenContent:Landroid/widget/LinearLayout;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

.field public final rocket:Lru/rocketbank/core/widgets/RocketTextView;

.field public final supportButton:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textPayment:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final yourUrl:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ed

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09042a

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09038c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090368

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 115
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 46
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->fullscreenContent:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->fullscreenContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->rocket:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x5

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->supportButton:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x4

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->textPayment:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x1

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x3

    .line 52
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->yourUrl:Lru/rocketbank/core/widgets/RocketTextView;

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 1

    .line 135
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 2

    const-string v0, "layout/activity_shop_info_0"

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
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

    .line 142
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 1

    .line 127
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 3

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 1

    .line 119
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;
    .locals 1

    const v0, 0x7f0c005c

    .line 123
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 106
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 108
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mDirtyFlags:J

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->requestRebind()V

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

    const/4 p1, 0x0

    return p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
