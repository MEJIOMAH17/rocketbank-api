.class public interface abstract Lcom/pusher/client/channel/PresenceChannelEventListener;
.super Ljava/lang/Object;
.source "PresenceChannelEventListener.java"

# interfaces
.implements Lcom/pusher/client/channel/PrivateChannelEventListener;


# virtual methods
.method public abstract onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
.end method

.method public abstract userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
.end method
