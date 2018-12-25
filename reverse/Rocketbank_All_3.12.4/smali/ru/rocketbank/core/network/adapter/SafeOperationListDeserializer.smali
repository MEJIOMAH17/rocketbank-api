.class public final Lru/rocketbank/core/network/adapter/SafeOperationListDeserializer;
.super Ljava/lang/Object;
.source "SafeOperationListDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final deserializeItem(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/FeedItem;
    .locals 4

    .line 3047
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_6

    .line 2105
    check-cast p1, Lcom/google/gson/JsonArray;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "pairJson.get(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "push"

    .line 42
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/PushOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/PushOperation;

    .line 44
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v3, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :cond_0
    const-string v2, "operation"

    .line 45
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/Operation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 47
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x4

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :cond_1
    const-string v2, "month_cash_back"

    .line 48
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    .line 50
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x3

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :cond_2
    const-string v2, "chosen_month_cash_back"

    .line 51
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;

    .line 53
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x7

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :cond_3
    const-string v2, "discount"

    .line 54
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/discounts/Discount;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/discounts/Discount;

    .line 56
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x5

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :cond_4
    const-string v2, "friend"

    .line 57
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/FriendOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/FriendOperation;

    .line 59
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x2

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    .line 62
    :cond_5
    new-instance p1, Lru/rocketbank/core/network/model/FeedItem;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p1

    .line 2107
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/network/adapter/SafeOperationListDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p2, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    invoke-direct {p2}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;-><init>()V

    .line 2047
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_1

    .line 1105
    check-cast p1, Lcom/google/gson/JsonArray;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 31
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "jsonElements.get(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p3}, Lru/rocketbank/core/network/adapter/SafeOperationListDeserializer;->deserializeItem(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v2

    .line 32
    invoke-virtual {p2, v2}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    .line 1107
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
