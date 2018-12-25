.class public final Lru/rocketbank/core/network/adapter/FeedDeserializer;
.super Ljava/lang/Object;
.source "FeedDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lru/rocketbank/core/network/model/NanoFeedResult$Feed;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedDeserializer.kt\nru/rocketbank/core/network/adapter/FeedDeserializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n1246#2:147\n1315#2,3:148\n1519#2,2:151\n*E\n*S KotlinDebug\n*F\n+ 1 FeedDeserializer.kt\nru/rocketbank/core/network/adapter/FeedDeserializer\n*L\n30#1:147\n30#1,3:148\n31#1,2:151\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final deserializeItem(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/FeedItem;
    .locals 4

    .line 3047
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_2

    .line 2105
    check-cast p1, Lcom/google/gson/JsonArray;

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "pairJson.get(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "month_cash_back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    .line 93
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x3

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_1
    const-string v2, "operation"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/Operation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 89
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x4

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_2
    const-string v2, "chosen_month_cash_back"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;

    .line 97
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x7

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_3
    const-string v2, "rocketruble_operation"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/dto/operations/Operation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 113
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x10

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_4
    const-string v2, "delivery"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/DeliveryOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/DeliveryOperation;

    .line 109
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0xf

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_5
    const-string v2, "onetwotrip_uid"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/OneTwoTripUidOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/OneTwoTripUidOperation;

    .line 126
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x11

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_6
    const-string v2, "discount"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/discounts/Discount;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/discounts/Discount;

    .line 101
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x5

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_7
    const-string v2, "gibdd"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :sswitch_8
    const-string v2, "push"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/PushOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/PushOperation;

    .line 85
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v3, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_9
    const-string v2, "tax"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/TaxGibddPush;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/TaxGibddPush;

    .line 117
    invoke-virtual {p1, v1}, Lru/rocketbank/core/model/TaxGibddPush;->setType(Ljava/lang/String;)V

    .line 118
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0xd

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_a
    const-string v2, "salary_tariff"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/TariffOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/TariffOperation;

    .line 122
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0xe

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_b
    const-string v2, "transfer_to_safe_account"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/TransferToSafeAccountOperation;

    .line 140
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x14

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_c
    const-string v2, "new_passport"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/NewPassportOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/NewPassportOperation;

    .line 136
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x13

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_d
    const-string v2, "friend"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/FriendOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/FriendOperation;

    .line 105
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v0, 0x2

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    :sswitch_e
    const-string v2, "androidpay_push"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/model/AndroidPayOperation;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AndroidPayOperation;

    .line 130
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object p2

    .line 131
    sget-object v0, Lru/rocketbank/core/pay/google/AndroidPayUtils;->INSTANCE:Lru/rocketbank/core/pay/google/AndroidPayUtils;

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lru/rocketbank/core/pay/google/AndroidPayUtils;->checkPaySupport(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/model/AndroidPayOperation;->setVisible(Z)V

    .line 132
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x12

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p2

    .line 142
    :cond_1
    :goto_1
    new-instance p1, Lru/rocketbank/core/network/model/FeedItem;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-object p1

    .line 2107
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_data_0
    .sparse-switch
        -0x5097c840 -> :sswitch_e
        -0x4b79f562 -> :sswitch_d
        -0x1761182f -> :sswitch_c
        -0x11941995 -> :sswitch_b
        -0x3af0ac7 -> :sswitch_a
        0x1bfab -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x5dcac40 -> :sswitch_7
        0x10487541 -> :sswitch_6
        0x1e10f95c -> :sswitch_5
        0x31151bf4 -> :sswitch_4
        0x5a06c4cc -> :sswitch_3
        0x5ddffca7 -> :sswitch_2
        0x631ad567 -> :sswitch_1
        0x7ba24774 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/network/adapter/FeedDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/NanoFeedResult$Feed;
    .locals 3
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

    .line 23
    new-instance p2, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    invoke-direct {p2}, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;-><init>()V

    .line 2047
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_2

    .line 1105
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 26
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 28
    iget-object v1, p2, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const-string v0, "jsonElements"

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 149
    check-cast v1, Lcom/google/gson/JsonElement;

    const-string v2, "it"

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lru/rocketbank/core/network/adapter/FeedDeserializer;->deserializeItem(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/network/model/FeedItem;

    .line 31
    iget-object v0, p2, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2

    .line 1107
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
