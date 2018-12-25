.class public final Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;
.super Ljava/lang/Object;
.source "ChatActionPopup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/chat/ChatActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final cameraView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final galleryView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final loveView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final operationView:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->this$0:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090292

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->operationView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0900b0

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->cameraView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090198

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->galleryView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090227

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->loveView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->operationView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->cameraView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$2;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;)V

    check-cast p2, Lrx/functions/Action1;

    .line 90
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;

    check-cast v0, Lrx/functions/Action1;

    .line 87
    invoke-virtual {p1, p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->galleryView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$4;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$4;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 99
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;->loveView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$5;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
