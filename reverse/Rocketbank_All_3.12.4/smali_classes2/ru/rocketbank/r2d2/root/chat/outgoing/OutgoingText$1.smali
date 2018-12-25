.class final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;
.super Ljava/lang/Object;
.source "OutgoingText.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingText.kt\nru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1\n*L\n1#1,46:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->$retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->getRetryView()Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->getChatMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;->$retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;->retry(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    :cond_0
    return-void
.end method
