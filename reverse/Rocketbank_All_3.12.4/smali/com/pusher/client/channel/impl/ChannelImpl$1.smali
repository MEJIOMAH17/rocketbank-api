.class Lcom/pusher/client/channel/impl/ChannelImpl$1;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelImpl;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/impl/ChannelImpl;Lcom/pusher/client/channel/SubscriptionEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;

    iput-object p3, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    iget-object v1, v1, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$event:Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pusher/client/channel/SubscriptionEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
