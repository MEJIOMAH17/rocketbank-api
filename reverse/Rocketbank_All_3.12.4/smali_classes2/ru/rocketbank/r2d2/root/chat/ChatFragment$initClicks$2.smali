.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->initClicks()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 6

    .line 273
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x2

    .line 274
    new-array v0, v0, [I

    .line 275
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getEditZoneView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 276
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getChatActionPopup$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->getHeight()I

    move-result v1

    .line 278
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x0

    .line 279
    aget v5, v0, v4

    aget v0, v0, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Point;->set(II)V

    .line 280
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getChatActionPopup$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getWindowWidth$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->showPopup(ILandroid/graphics/Point;)V

    .line 281
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getActionButtonView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f080081

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
