.class public Lcom/pusher/client/channel/impl/ChannelImpl;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/impl/InternalChannel;


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final INTERNAL_EVENT_PREFIX:Ljava/lang/String; = "pusher_internal:"

.field protected static final SUBSCRIPTION_SUCCESS_EVENT:Ljava/lang/String; = "pusher_internal:subscription_succeeded"


# instance fields
.field private eventListener:Lcom/pusher/client/channel/ChannelEventListener;

.field private final eventNameToListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/SubscriptionEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final lock:Ljava/lang/Object;

.field protected final name:Ljava/lang/String;

.field protected volatile state:Lcom/pusher/client/channel/ChannelState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/util/Factory;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->INITIAL:Lcom/pusher/client/channel/ChannelState;

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot subscribe to a channel with a null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/ChannelImpl;->getDisallowedNameExpressions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid. Private channel names must start with \"private-\" and presence channel names must start with \"presence-\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_2
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/pusher/client/channel/impl/ChannelImpl;)Lcom/pusher/client/channel/ChannelEventListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-object p0
.end method

.method private extractDataFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    sget-object v0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "data"

    .line 195
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot bind or unbind to channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with a null event name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 209
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot bind or unbind to channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with a null listener"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "pusher_internal:"

    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 213
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot bind or unbind channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with an internal event name such as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    sget-object p2, Lcom/pusher/client/channel/ChannelState;->UNSUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne p1, p2, :cond_3

    .line 218
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot bind or unbind to events on a channel that has been unsubscribed. Call Pusher.subscribe() to resubscribe to this channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    .line 60
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public compareTo(Lcom/pusher/client/channel/impl/InternalChannel;)I
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/ChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->compareTo(Lcom/pusher/client/channel/impl/InternalChannel;)I

    move-result p1

    return p1
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 199
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^private-.*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "^presence-.*"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getEventListener()Lcom/pusher/client/channel/ChannelEventListener;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "pusher_internal:subscription_succeeded"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object p1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 104
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 109
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/client/channel/SubscriptionEventListener;

    .line 113
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->extractDataFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    new-instance v4, Lcom/pusher/client/channel/impl/ChannelImpl$1;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/pusher/client/channel/impl/ChannelImpl$1;-><init>(Lcom/pusher/client/channel/impl/ChannelImpl;Lcom/pusher/client/channel/SubscriptionEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEventListener(Lcom/pusher/client/channel/ChannelEventListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Public Channel: name=%s]"

    const/4 v1, 0x1

    .line 189
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 4

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "pusher:subscribe"

    .line 130
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "channel"

    .line 133
    iget-object v3, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 135
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnsubscribeMessage()Ljava/lang/String;
    .locals 4

    .line 142
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "pusher:unsubscribe"

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "channel"

    .line 146
    iget-object v3, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 148
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    .line 75
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateState(Lcom/pusher/client/channel/ChannelState;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    .line 158
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    new-instance v0, Lcom/pusher/client/channel/impl/ChannelImpl$2;

    invoke-direct {v0, p0}, Lcom/pusher/client/channel/impl/ChannelImpl$2;-><init>(Lcom/pusher/client/channel/impl/ChannelImpl;)V

    invoke-virtual {p1, v0}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
