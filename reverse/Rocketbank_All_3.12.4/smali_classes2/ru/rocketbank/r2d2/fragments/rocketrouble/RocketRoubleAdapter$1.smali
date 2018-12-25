.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "RocketRoubleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/core/model/RocketRubleHistoryOperation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    check-cast p2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->areContentsTheSame(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)Z

    move-result p1

    return p1
.end method

.method public final areContentsTheSame(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)Z
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

    .line 41
    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    check-cast p2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->areItemsTheSame(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)Z

    move-result p1

    return p1
.end method

.method public final areItemsTheSame(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)Z
    .locals 1

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    check-cast p2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->compare(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)I
    .locals 5

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lru/rocketbank/core/model/AbstractOperation;->getHappenedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/AbstractOperation;->getHappenedAt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long v3, v1, p1

    long-to-int p1, v3

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public final onChanged(II)V
    .locals 1

    .line 62
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->access$getStickyItems$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final onInserted(II)V
    .locals 1

    .line 47
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->access$getStickyItems$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final onMoved(II)V
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->access$getStickyItems$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final onRemoved(II)V
    .locals 0

    return-void
.end method
