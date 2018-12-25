.class public Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemPushBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

.field public final body:Lru/rocketbank/core/widgets/RocketTextView;

.field public final buttons:Landroid/widget/LinearLayout;

.field public final cardBody:Landroid/support/v7/widget/CardView;

.field public final image:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mPush:Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;

.field public final main:Landroid/widget/RelativeLayout;

.field public final mainAction:Lru/rocketbank/core/widgets/RocketTextView;

.field public final root:Landroid/widget/LinearLayout;

.field public final title:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ba

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090228

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c7

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903cc

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090084

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ab

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09003b

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09022a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 127
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mDirtyFlags:J

    .line 54
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x7

    .line 55
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x5

    .line 56
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->body:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x6

    .line 57
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->buttons:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 58
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->cardBody:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x3

    .line 59
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->image:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->main:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 61
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mainAction:Lru/rocketbank/core/widgets/RocketTextView;

    .line 62
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->root:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->root:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 64
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    .line 65
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 1

    .line 147
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 2

    const-string v0, "layout/feed_item_push_0"

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
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

    .line 154
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 1

    .line 139
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 3

    const v0, 0x7f0c00bb

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 1

    .line 131
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 1

    const v0, 0x7f0c00bb

    .line 135
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 118
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 120
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mDirtyFlags:J

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPush()Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;
    .locals 1

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mPush:Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 73
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
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

.method public setPush(Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mPush:Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x44

    if-ne v0, p1, :cond_0

    .line 92
    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->setPush(Lru/rocketbank/r2d2/root/feed/viewholder/PushModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
