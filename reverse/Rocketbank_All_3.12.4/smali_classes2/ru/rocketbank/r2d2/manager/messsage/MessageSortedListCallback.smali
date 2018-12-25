.class public final Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "MessageSortedListCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback<",
        "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V
    .locals 1

    const-string v0, "chatAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    return-void
.end method


# virtual methods
.method public final bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    check-cast p2, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->areContentsTheSame(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)Z

    move-result p1

    return p1
.end method

.method public final areContentsTheSame(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    check-cast p2, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->areItemsTheSame(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)Z

    move-result p1

    return p1
.end method

.method public final areItemsTheSame(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)Z
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

    .line 8
    check-cast p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    check-cast p2, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->compare(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/r2d2/manager/messsage/ChatMessage;Lru/rocketbank/r2d2/manager/messsage/ChatMessage;)I
    .locals 5

    const-string v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_2
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v3

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "MEQU"

    const-string p2, "o1 eq o2"

    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 32
    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 36
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getNumber()I

    move-result v0

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 37
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getChunk()I

    move-result p2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getChunk()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    .line 40
    :cond_5
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getNumber()I

    move-result p2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getNumber()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :cond_6
    const-string v0, "MEQU"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "o1 time o2 time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\no1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "o2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result p2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :cond_7
    const-string v0, "MEQU"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no message : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v3

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->getTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\no1\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "o2\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final onChanged(II)V
    .locals 0

    .line 64
    iget-object p2, p0, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final onInserted(II)V
    .locals 0

    .line 52
    iget-object p2, p0, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemInsertedItem(I)V

    return-void
.end method

.method public final onMoved(II)V
    .locals 1

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final onRemoved(II)V
    .locals 0

    .line 56
    iget-object p2, p0, Lru/rocketbank/r2d2/manager/messsage/MessageSortedListCallback;->chatAdapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemRemoved(I)V

    return-void
.end method
