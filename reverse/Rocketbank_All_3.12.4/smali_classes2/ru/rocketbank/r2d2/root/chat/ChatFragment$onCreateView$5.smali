.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 218
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
