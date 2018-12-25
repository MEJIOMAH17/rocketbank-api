.class public interface abstract Lcom/pusher/client/Client;
.super Ljava/lang/Object;
.source "Client.java"


# virtual methods
.method public abstract connect()V
.end method

.method public varargs abstract connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
.end method

.method public abstract getConnection()Lcom/pusher/client/connection/Connection;
.end method

.method public abstract getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
.end method

.method public abstract getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
.end method

.method public abstract subscribe(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
.end method

.method public varargs abstract subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
.end method

.method public abstract subscribePresence(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
.end method

.method public varargs abstract subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
.end method

.method public abstract subscribePrivate(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
.end method

.method public varargs abstract subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
.end method
