.class public Lcom/pusher/client/example/ExampleApp;
.super Ljava/lang/Object;
.source "ExampleApp.java"

# interfaces
.implements Lcom/pusher/client/channel/ChannelEventListener;
.implements Lcom/pusher/client/connection/ConnectionEventListener;


# instance fields
.field private final channelName:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private final pusher:Lcom/pusher/client/Pusher;

.field private final startTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pusher/client/example/ExampleApp;->startTime:J

    const/4 v0, 0x0

    .line 26
    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "161717a55e65825bacf1"

    :goto_0
    const/4 v2, 0x1

    .line 27
    array-length v3, p1

    if-le v3, v2, :cond_1

    aget-object v3, p1, v2

    goto :goto_1

    :cond_1
    const-string v3, "my-channel"

    :goto_1
    iput-object v3, p0, Lcom/pusher/client/example/ExampleApp;->channelName:Ljava/lang/String;

    const/4 v3, 0x2

    .line 28
    array-length v4, p1

    if-le v4, v3, :cond_2

    aget-object p1, p1, v3

    goto :goto_2

    :cond_2
    const-string p1, "my-event"

    :goto_2
    iput-object p1, p0, Lcom/pusher/client/example/ExampleApp;->eventName:Ljava/lang/String;

    .line 30
    new-instance p1, Lcom/pusher/client/PusherOptions;

    invoke-direct {p1}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-virtual {p1, v2}, Lcom/pusher/client/PusherOptions;->setEncrypted(Z)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 31
    new-instance v3, Lcom/pusher/client/Pusher;

    invoke-direct {v3, v1, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    iput-object v3, p0, Lcom/pusher/client/example/ExampleApp;->pusher:Lcom/pusher/client/Pusher;

    .line 32
    iget-object p1, p0, Lcom/pusher/client/example/ExampleApp;->pusher:Lcom/pusher/client/Pusher;

    new-array v1, v0, [Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {p1, p0, v1}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 34
    iget-object p1, p0, Lcom/pusher/client/example/ExampleApp;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/pusher/client/example/ExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/example/ExampleApp;->eventName:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, p0, v2}, Lcom/pusher/client/Pusher;->subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    :goto_3
    const-wide/16 v0, 0x3e8

    .line 40
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/pusher/client/example/ExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/ExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private timestamp()J
    .locals 6

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pusher/client/example/ExampleApp;->startTime:J

    sub-long v4, v0, v2

    return-wide v4
.end method


# virtual methods
.method public onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
    .locals 5

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[%d] Connection state changed from [%s] to [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/pusher/client/example/ExampleApp;->timestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getPreviousState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 53
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[%d] An error was received with message [%s], code [%s], exception [%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/pusher/client/example/ExampleApp;->timestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 69
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[%d] Received event [%s] on channel [%s] with data [%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/pusher/client/example/ExampleApp;->timestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const/4 p1, 0x3

    aput-object p3, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    const-class p2, Ljava/util/Map;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 75
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 5

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[%d] Subscription to channel [%s] succeeded"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/pusher/client/example/ExampleApp;->timestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
