.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$notifyItemInsertedItem$1;
.super Ljava/lang/Object;
.source "ChatAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemInsertedItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$notifyItemInsertedItem$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$notifyItemInsertedItem$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->access$getChatView$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
