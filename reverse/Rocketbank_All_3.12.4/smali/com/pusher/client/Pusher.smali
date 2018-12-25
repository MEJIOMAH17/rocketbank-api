.class public Lcom/pusher/client/Pusher;
.super Ljava/lang/Object;
.source "Pusher.java"

# interfaces
.implements Lcom/pusher/client/Client;


# instance fields
.field private final channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

.field private final connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final pusherOptions:Lcom/pusher/client/PusherOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/pusher/client/util/Factory;

    invoke-direct {v0}, Lcom/pusher/client/util/Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PusherOptions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    iput-object p2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 101
    iput-object p3, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    .line 102
    iget-object p2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    invoke-virtual {p3, p1, p2}, Lcom/pusher/client/util/Factory;->getConnection(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 103
    invoke-virtual {p3}, Lcom/pusher/client/util/Factory;->getChannelManager()Lcom/pusher/client/channel/impl/ChannelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    .line 104
    iget-object p1, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    iget-object p2, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-virtual {p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager;->setConnection(Lcom/pusher/client/connection/impl/InternalConnection;)V

    return-void

    .line 93
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "API Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwExceptionIfNoAuthorizerHasBeenSet()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    invoke-virtual {v0}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    const/4 v0, 0x0

    .line 128
    new-array v0, v0, [Lcom/pusher/client/connection/ConnectionState;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method public varargs connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 160
    array-length v1, p2

    if-nez v1, :cond_0

    const/4 p2, 0x1

    .line 161
    new-array p2, p2, [Lcom/pusher/client/connection/ConnectionState;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    aput-object v1, p2, v0

    .line 164
    :cond_0
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    .line 165
    iget-object v3, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v3, v2, p1}, Lcom/pusher/client/connection/impl/InternalConnection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length p1, p2

    if-lez p1, :cond_2

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot bind to connection states with a null connection event listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {p1}, Lcom/pusher/client/connection/impl/InternalConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    move-result-object p1

    return-object p1
.end method

.method public getConnection()Lcom/pusher/client/connection/Connection;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    return-object v0
.end method

.method public getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 2

    const/4 v0, 0x0

    .line 208
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    invoke-virtual {v0, p1}, Lcom/pusher/client/util/Factory;->newPublicChannel(Ljava/lang/String;)Lcom/pusher/client/channel/impl/ChannelImpl;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public subscribePresence(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 2

    const/4 v0, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 319
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 320
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPresenceChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public subscribePrivate(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 2

    const/4 v0, 0x0

    .line 262
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 280
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 281
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPrivateChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PrivateChannelImpl;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->unsubscribeFrom(Ljava/lang/String;)V

    return-void
.end method
