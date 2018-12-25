.class final Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;
.super Ljava/lang/Object;
.source "ChatActionPopup.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->access$getMaybeActions$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;->onLovePressed()V

    .line 101
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->access$getPopup$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_1
    return-void
.end method
