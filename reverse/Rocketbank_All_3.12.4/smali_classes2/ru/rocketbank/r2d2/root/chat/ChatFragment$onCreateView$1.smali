.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getActionButtonView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->$view:Landroid/view/View;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080122

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
