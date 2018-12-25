.class public Lcom/pusher/client/channel/impl/PresenceChannelImpl;
.super Lcom/pusher/client/channel/impl/PrivateChannelImpl;
.source "PresenceChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/PresenceChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;,
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;,
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final MEMBER_ADDED_EVENT:Ljava/lang/String; = "pusher_internal:member_added"

.field private static final MEMBER_REMOVED_EVENT:Ljava/lang/String; = "pusher_internal:member_removed"


# instance fields
.field private final idToUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pusher/client/channel/User;",
            ">;"
        }
    .end annotation
.end field

.field private myUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;-><init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    return-void
.end method

.method private static extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 179
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "data"

    .line 180
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static extractPresenceDataFrom(Ljava/lang/String;)Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;
    .locals 2

    .line 185
    invoke-static {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;

    iget-object p0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;->presence:Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;

    return-object p0
.end method

.method private handleMemberAddedEvent(Ljava/lang/String;)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    .line 149
    iget-object v0, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userId:Ljava/lang/String;

    .line 150
    iget-object v1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userInfo:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 152
    :goto_0
    new-instance v1, Lcom/pusher/client/channel/User;

    invoke-direct {v1, v0, p1}, Lcom/pusher/client/channel/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    check-cast p1, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 158
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V

    :cond_1
    return-void
.end method

.method private handleMemberRemovedEvent(Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    .line 168
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/User;

    .line 170
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    check-cast v0, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 173
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V

    :cond_0
    return-void
.end method

.method private handleSubscriptionSuccessfulMessage(Ljava/lang/String;)V
    .locals 4

    .line 125
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractPresenceDataFrom(Ljava/lang/String;)Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;

    move-result-object p1

    .line 126
    iget-object v0, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;->ids:Ljava/util/List;

    .line 127
    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;->hash:Ljava/util/Map;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_1
    new-instance v3, Lcom/pusher/client/channel/User;

    invoke-direct {v3, v1, v2}, Lcom/pusher/client/channel/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 138
    check-cast p1, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 139
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getUsers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method private storeMyUserId(Ljava/lang/Object;)V
    .locals 2

    .line 191
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    check-cast p1, Ljava/lang/String;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "user_id"

    .line 192
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->myUserID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 1

    .line 103
    instance-of v0, p2, Lcom/pusher/client/channel/PresenceChannelEventListener;

    if-nez v0, :cond_0

    .line 104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PresenceChannelEventListener can be bound to a presence channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^(?!presence-).*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getMe()Lcom/pusher/client/channel/User;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->myUserID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/User;

    return-object v0
.end method

.method public getUsers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pusher_internal:subscription_succeeded"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleSubscriptionSuccessfulMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "pusher_internal:member_added"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleMemberAddedEvent(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "pusher_internal:member_removed"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleMemberRemovedEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Presence Channel: name=%s]"

    const/4 v1, 0x1

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 7

    .line 72
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getAuthResponse()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "auth"

    .line 76
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "channel_data"

    .line 77
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    invoke-direct {p0, v1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->storeMyUserId(Ljava/lang/Object;)V

    .line 81
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "event"

    const-string v5, "pusher:subscribe"

    .line 82
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "channel"

    .line 85
    iget-object v6, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "auth"

    .line 86
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel_data"

    .line 87
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 89
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 96
    new-instance v2, Lcom/pusher/client/AuthorizationFailureException;

    const-string v3, "Unable to parse response from Authorizer: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
