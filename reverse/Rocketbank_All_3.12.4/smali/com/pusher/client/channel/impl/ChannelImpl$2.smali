.class Lcom/pusher/client/channel/impl/ChannelImpl$2;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelImpl;->updateState(Lcom/pusher/client/channel/ChannelState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/ChannelImpl;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/impl/ChannelImpl;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$2;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl$2;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    invoke-static {v0}, Lcom/pusher/client/channel/impl/ChannelImpl;->access$000(Lcom/pusher/client/channel/impl/ChannelImpl;)Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$2;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    invoke-virtual {v1}, Lcom/pusher/client/channel/impl/ChannelImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/ChannelEventListener;->onSubscriptionSucceeded(Ljava/lang/String;)V

    return-void
.end method
