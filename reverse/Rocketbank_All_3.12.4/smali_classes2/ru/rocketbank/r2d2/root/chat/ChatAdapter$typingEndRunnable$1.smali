.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$typingEndRunnable$1;
.super Ljava/lang/Object;
.source "ChatAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/root/chat/MessageManager;)V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$typingEndRunnable$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$typingEndRunnable$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->deactivateTyping()V

    return-void
.end method
