.class final Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-static {v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$100(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$002(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;Z)Z

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 2

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-static {v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$100(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$002(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;Z)Z

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 2

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-static {v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$100(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$002(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;Z)Z

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 2

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-static {v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$100(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->access$002(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;Z)Z

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
