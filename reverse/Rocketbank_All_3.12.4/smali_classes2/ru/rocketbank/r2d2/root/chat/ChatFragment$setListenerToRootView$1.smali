.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->setListenerToRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activityRootView:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->$activityRootView:Landroid/view/View;

    const-string v1, "activityRootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activityRootView.rootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->setKeyboardOpened(Z)V

    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->isKeyboardOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getChatActionPopup$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->isShowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$reopenChatPopUp(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->setKeyboardOpened(Z)V

    :cond_3
    return-void
.end method
