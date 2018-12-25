.class Lcom/pusher/client/channel/impl/ChannelManager$1;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelManager;->sendOrQueueSubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V
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

    .line 135
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-static {v0}, Lcom/pusher/client/channel/impl/ChannelManager;->access$000(Lcom/pusher/client/channel/impl/ChannelManager;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-interface {v0}, Lcom/pusher/client/channel/impl/InternalChannel;->toSubscribeMessage()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-static {v1}, Lcom/pusher/client/channel/impl/ChannelManager;->access$000(Lcom/pusher/client/channel/impl/ChannelManager;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pusher/client/connection/impl/InternalConnection;->sendMessage(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBE_SENT:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/impl/InternalChannel;->updateState(Lcom/pusher/client/channel/ChannelState;)V
    :try_end_0
    .catch Lcom/pusher/client/AuthorizationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelManager$1;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-static {v1, v2, v0}, Lcom/pusher/client/channel/impl/ChannelManager;->access$100(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
