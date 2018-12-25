.class public interface abstract Lcom/pusher/client/channel/impl/InternalChannel;
.super Ljava/lang/Object;
.source "InternalChannel.java"

# interfaces
.implements Lcom/pusher/client/channel/Channel;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pusher/client/channel/Channel;",
        "Ljava/lang/Comparable<",
        "Lcom/pusher/client/channel/impl/InternalChannel;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getEventListener()Lcom/pusher/client/channel/ChannelEventListener;
.end method

.method public abstract onMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEventListener(Lcom/pusher/client/channel/ChannelEventListener;)V
.end method

.method public abstract toSubscribeMessage()Ljava/lang/String;
.end method

.method public abstract toUnsubscribeMessage()Ljava/lang/String;
.end method

.method public abstract updateState(Lcom/pusher/client/channel/ChannelState;)V
.end method
