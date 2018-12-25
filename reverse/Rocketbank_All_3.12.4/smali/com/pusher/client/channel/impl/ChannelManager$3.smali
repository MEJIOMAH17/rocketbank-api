.class Lcom/pusher/client/channel/impl/ChannelManager$3;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelManager;->clearDownSubscription(Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/ChannelManager;

.field final synthetic val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->this$0:Lcom/pusher/client/channel/impl/ChannelManager;

    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    iput-object p3, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->val$channel:Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-interface {v0}, Lcom/pusher/client/channel/impl/InternalChannel;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object v0

    .line 177
    check-cast v0, Lcom/pusher/client/channel/PrivateChannelEventListener;

    .line 178
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelManager$3;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/PrivateChannelEventListener;->onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
