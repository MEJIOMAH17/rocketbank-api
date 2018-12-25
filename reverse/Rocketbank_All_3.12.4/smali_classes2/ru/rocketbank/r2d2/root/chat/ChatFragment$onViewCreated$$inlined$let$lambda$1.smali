.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $linearLayoutManager$inlined:Landroid/support/v7/widget/LinearLayoutManager;

.field final synthetic $savedInstanceState$inlined:Landroid/os/Bundle;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/os/Bundle;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->$savedInstanceState$inlined:Landroid/os/Bundle;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->$linearLayoutManager$inlined:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->call(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getAdapter$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->updateData(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    .line 370
    :cond_0
    instance-of p1, p1, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;

    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->$linearLayoutManager$inlined:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 372
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getChatView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->smoothScrollToPosition(I)V

    .line 375
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getRocketLoader$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/widgets/RocketLoader;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketLoader;->setVisibility(I)V

    return-void
.end method
