.class public Lcom/pusher/client/example/PresenceChannelExampleApp;
.super Ljava/lang/Object;
.source "PresenceChannelExampleApp.java"

# interfaces
.implements Lcom/pusher/client/channel/PresenceChannelEventListener;
.implements Lcom/pusher/client/connection/ConnectionEventListener;


# instance fields
.field private final channel:Lcom/pusher/client/channel/PresenceChannel;

.field private final channelName:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private final pusher:Lcom/pusher/client/Pusher;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "a87fe72c6f36272aa4b1"

    :goto_0
    const/4 v2, 0x1

    .line 29
    array-length v3, p1

    if-le v3, v2, :cond_1

    aget-object v3, p1, v2

    goto :goto_1

    :cond_1
    const-string v3, "presence-my-channel"

    :goto_1
    iput-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelName:Ljava/lang/String;

    const/4 v3, 0x2

    .line 30
    array-length v4, p1

    if-le v4, v3, :cond_2

    aget-object p1, p1, v3

    goto :goto_2

    :cond_2
    const-string p1, "my-event"

    :goto_2
    iput-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->eventName:Ljava/lang/String;

    .line 32
    new-instance p1, Lcom/pusher/client/util/HttpAuthorizer;

    const-string v3, "http://www.leggetter.co.uk/pusher/pusher-examples/php/authentication/src/presence_auth.php"

    invoke-direct {p1, v3}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v3, Lcom/pusher/client/PusherOptions;

    invoke-direct {v3}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/pusher/client/PusherOptions;->setEncrypted(Z)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 36
    new-instance v3, Lcom/pusher/client/Pusher;

    invoke-direct {v3, v1, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    iput-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->pusher:Lcom/pusher/client/Pusher;

    .line 37
    iget-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->pusher:Lcom/pusher/client/Pusher;

    new-array v1, v0, [Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {p1, p0, v1}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 39
    iget-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->eventName:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, p0, v2}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    :goto_3
    const-wide/16 v0, 0x3e8

    .line 45
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private printCurrentlySubscribedUsers()V
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Users now subscribed to the channel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v1}, Lcom/pusher/client/channel/PresenceChannel;->getUsers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/client/channel/User;

    const-string v3, "\n\t"

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Lcom/pusher/client/channel/User;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v3}, Lcom/pusher/client/channel/PresenceChannel;->getMe()Lcom/pusher/client/channel/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pusher/client/channel/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " (me)"

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Authentication failure due to [%s], exception was [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
    .locals 5

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connection state changed from [%s] to [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getPreviousState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 59
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 58
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "An error was received with message [%s], code [%s], exception [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Received event [%s] on channel [%s] with data [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 4

    .line 105
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Subscription to channel [%s] succeeded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v2}, Lcom/pusher/client/channel/PresenceChannel;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;)V"
        }
    .end annotation

    .line 74
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Received user information"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;->printCurrentlySubscribedUsers()V

    return-void
.end method

.method public userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 4

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "A new user has joined channel [%s]: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/pusher/client/channel/User;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;->printCurrentlySubscribedUsers()V

    return-void
.end method

.method public userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 4

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "A user has left channel [%s]: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;->printCurrentlySubscribedUsers()V

    return-void
.end method
