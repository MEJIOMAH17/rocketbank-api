.class public final Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "ParallaxAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->invoke()Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->areContentsTheSame(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z

    move-result p1

    return p1
.end method

.method public final areContentsTheSame(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newItem"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->areItemsTheSame(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z

    move-result p1

    return p1
.end method

.method public final areItemsTheSame(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z
    .locals 1

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p2, :cond_1

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getEqualMethod()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->compare(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)I
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getSortMethod()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final onChanged(II)V
    .locals 5

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v1, p1, v0

    const-string v2, "PrlAdpt"

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onChanged: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {p1, v1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onInserted(II)V
    .locals 5

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "PrlAdpt"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onInserted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v4, v4, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v1, v1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final onMoved(II)V
    .locals 4

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "PrlAdpt"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMoved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v3, v3, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v1, v1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final onRemoved(II)V
    .locals 4

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "PrlAdpt"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRemoved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v3, v3, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    iget-object v1, v1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
