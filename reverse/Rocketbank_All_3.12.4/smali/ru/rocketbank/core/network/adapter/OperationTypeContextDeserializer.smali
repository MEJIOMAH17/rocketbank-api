.class public final Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;
.super Lcom/google/gson/TypeAdapter;
.source "OperationTypeContextDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lru/rocketbank/core/network/model/operation/OperationContextType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationTypeContextDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationTypeContextDeserializer.kt\nru/rocketbank/core/network/adapter/OperationTypeContextDeserializer\n*L\n1#1,30:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private final deserialize(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/OperationContextType;
    .locals 5

    if-eqz p1, :cond_3

    .line 27
    invoke-static {}, Lru/rocketbank/core/network/model/operation/OperationContextType;->values()[Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lru/rocketbank/core/network/model/operation/OperationContextType;->Unknown:Lru/rocketbank/core/network/model/operation/OperationContextType;

    :cond_2
    if-nez v3, :cond_4

    .line 28
    :cond_3
    sget-object v3, Lru/rocketbank/core/network/model/operation/OperationContextType;->None:Lru/rocketbank/core/network/model/operation/OperationContextType;

    :cond_4
    return-object v3
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;->read(Lcom/google/gson/stream/JsonReader;)Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object p1

    return-object p1
.end method

.method public final read(Lcom/google/gson/stream/JsonReader;)Lru/rocketbank/core/network/model/operation/OperationContextType;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken;->valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 20
    :cond_2
    sget-object p1, Lru/rocketbank/core/network/model/operation/OperationContextType;->None:Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-direct {p0, v0}, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;->deserialize(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;->write(Lcom/google/gson/stream/JsonWriter;Lru/rocketbank/core/network/model/operation/OperationContextType;)V

    return-void
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Lru/rocketbank/core/network/model/operation/OperationContextType;)V
    .locals 0

    return-void
.end method
