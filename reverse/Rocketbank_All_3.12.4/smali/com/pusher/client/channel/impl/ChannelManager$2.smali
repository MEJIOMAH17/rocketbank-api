.class Lcom/pusher/client/channel/impl/ChannelManager$2;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelManager;->sendUnsubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/ChannelManager;

.field final synthetic val$channel:Lcom/pusher/client/channel/impl/InternalChannel;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager$2;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelManager$2;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$2;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-static {v0}, Lcom/pusher/client/channel/impl/ChannelManager;->access$000(Lcom/pusher/client/channel/impl/ChannelManager;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelManager$2;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-interface {v1}, Lcom/pusher/client/channel/impl/InternalChannel;->toUnsubscribeMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pusher/client/connection/impl/InternalConnection;->sendMessage(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$2;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->UNSUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/impl/InternalChannel;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    return-void
.end method
