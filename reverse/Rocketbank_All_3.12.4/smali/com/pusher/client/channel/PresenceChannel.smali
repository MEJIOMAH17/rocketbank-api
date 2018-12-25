.class public interface abstract Lcom/pusher/client/channel/PresenceChannel;
.super Ljava/lang/Object;
.source "PresenceChannel.java"

# interfaces
.implements Lcom/pusher/client/channel/PrivateChannel;


# virtual methods
.method public abstract getMe()Lcom/pusher/client/channel/User;
.end method

.method public abstract getUsers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;"
        }
    .end annotation
.end method
