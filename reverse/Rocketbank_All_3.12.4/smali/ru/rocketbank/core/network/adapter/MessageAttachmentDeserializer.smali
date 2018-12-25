.class public final Lru/rocketbank/core/network/adapter/MessageAttachmentDeserializer;
.super Ljava/lang/Object;
.source "MessageAttachmentDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lru/rocketbank/core/model/message/Attachment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/network/adapter/MessageAttachmentDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/message/Attachment;
    .locals 1

    if-nez p3, :cond_0

    .line 13
    new-instance p1, Lru/rocketbank/core/model/message/Attachment;

    invoke-direct {p1}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 14
    new-instance p1, Lru/rocketbank/core/model/message/Attachment;

    invoke-direct {p1}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-object p1

    .line 2056
    :cond_1
    instance-of p2, p1, Lcom/google/gson/JsonObject;

    if-eqz p2, :cond_4

    .line 1089
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v0, "type"

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string v0, "json.asJsonObject.get(\"type\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "operation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    const-class p2, Lru/rocketbank/core/model/message/OperationAttachment;

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/Attachment;

    goto :goto_1

    :sswitch_1
    const-string v0, "document"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    const-class p2, Lru/rocketbank/core/model/message/DocumentAttachment;

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/Attachment;

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    const-class p2, Lru/rocketbank/core/model/message/ImageAttachment;

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/Attachment;

    goto :goto_1

    :sswitch_3
    const-string v0, "rating"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    const-class p2, Lru/rocketbank/core/model/message/RatingAttachment;

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/Attachment;

    goto :goto_1

    :sswitch_4
    const-string v0, "sticker"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    const-class p2, Lru/rocketbank/core/model/message/StickerAttachment;

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/Attachment;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "MsgAttachment"

    const-string p3, "Unknown type "

    .line 25
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p1, Lru/rocketbank/core/model/message/Attachment;

    invoke-direct {p1}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    :goto_1
    const-string p2, "attachment"

    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 1091
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_4
        -0x37ea4e63 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x335cd11b -> :sswitch_1
        0x631ad567 -> :sswitch_0
    .end sparse-switch
.end method
