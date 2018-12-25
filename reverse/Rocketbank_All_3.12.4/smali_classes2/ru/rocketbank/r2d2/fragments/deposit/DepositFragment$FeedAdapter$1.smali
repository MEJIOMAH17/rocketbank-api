.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "DepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 835
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    check-cast p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->areContentsTheSame(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 835
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    check-cast p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->areItemsTheSame(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)Z
    .locals 0

    .line 873
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 835
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    check-cast p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->compare(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)I
    .locals 0

    .line 838
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getHappenedAt()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getHappenedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public onChanged(II)V
    .locals 1

    .line 861
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->access$1600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 863
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 843
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->access$1600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 844
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 854
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->access$1600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 856
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    return-void
.end method
