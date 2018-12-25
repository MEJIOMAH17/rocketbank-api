.class final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;
.super Ljava/lang/Object;
.source "OutgoingSticker.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
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
.field final synthetic $retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->$retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getRetryView()Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->$retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getChatMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;->retry(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method
