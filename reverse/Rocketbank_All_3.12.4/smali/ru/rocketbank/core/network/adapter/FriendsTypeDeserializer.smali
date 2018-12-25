.class public final Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;
.super Lcom/google/gson/TypeAdapter;
.source "FriendsTypeDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lru/rocketbank/core/network/model/operation/FriendRequestType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendsTypeDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendsTypeDeserializer.kt\nru/rocketbank/core/network/adapter/FriendsTypeDeserializer\n*L\n1#1,70:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer$Companion;

.field private static final FRIEND_TRANSFER_TYPE_EXTERNAL:Ljava/lang/String; = "transfer_external"

.field private static final FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN:Ljava/lang/String; = "request_external_in"

.field private static final FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT:Ljava/lang/String; = "request_external_out"

.field private static final FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN:Ljava/lang/String; = "request_internal_in"

.field private static final FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT:Ljava/lang/String; = "request_internal_out"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->Companion:Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFRIEND_TRANSFER_TYPE_EXTERNAL$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_EXTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final deserialize(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .locals 2

    if-eqz p1, :cond_5

    .line 35
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->FRIEND_TRANSFER_TYPE_EXTERNAL:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->TransferExternal:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    goto :goto_0

    :cond_4
    const-string v0, "DSR"

    const-string v1, "Unknown friend request type "

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->Unknown:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    :goto_0
    if-nez p1, :cond_6

    .line 60
    :cond_5
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    :cond_6
    return-object p1
.end method

.method public final bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->read(Lcom/google/gson/stream/JsonReader;)Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object p1

    return-object p1
.end method

.method public final read(Lcom/google/gson/stream/JsonReader;)Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken;->valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 23
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 25
    :cond_2
    sget-object p1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->deserialize(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;->write(Lcom/google/gson/stream/JsonWriter;Lru/rocketbank/core/network/model/operation/FriendRequestType;)V

    return-void
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Lru/rocketbank/core/network/model/operation/FriendRequestType;)V
    .locals 0

    return-void
.end method
