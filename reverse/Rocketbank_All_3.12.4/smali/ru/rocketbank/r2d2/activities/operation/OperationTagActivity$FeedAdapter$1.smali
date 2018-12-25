.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/core/network/model/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 729
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->areContentsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 729
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->areItemsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 0

    .line 766
    invoke-virtual {p1, p2}, Lru/rocketbank/core/network/model/FeedItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 729
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->compare(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/network/model/FeedItem;)I
    .locals 4

    .line 732
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide p1

    sub-long v2, v0, p1

    long-to-int p1, v2

    return p1
.end method

.method public onChanged(II)V
    .locals 1

    .line 755
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->access$1100(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 756
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 737
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->access$1100(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 738
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 748
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->access$1100(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 750
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    return-void
.end method
