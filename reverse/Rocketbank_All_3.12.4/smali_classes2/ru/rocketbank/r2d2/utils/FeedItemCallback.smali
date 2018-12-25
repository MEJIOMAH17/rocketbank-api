.class public Lru/rocketbank/r2d2/utils/FeedItemCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "FeedItemCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "StickyItem:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/core/network/model/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private final stickyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TStickyItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Ljava/util/ArrayList<",
            "TStickyItem;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->stickyItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/FeedItemCallback;->areContentsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/FeedItemCallback;->areItemsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 1

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/FeedItemCallback;->compare(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)I
    .locals 4

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide p1

    sub-long v2, v0, p1

    long-to-int p1, v2

    return p1
.end method

.method public final getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onChanged(II)V
    .locals 1

    .line 35
    iget-object p2, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->stickyItem:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 36
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 20
    iget-object p2, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->stickyItem:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->stickyItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/utils/FeedItemCallback;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    return-void
.end method
