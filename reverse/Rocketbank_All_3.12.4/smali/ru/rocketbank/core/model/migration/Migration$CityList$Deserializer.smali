.class public Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;
.super Ljava/lang/Object;
.source "Migration.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/migration/Migration$CityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lru/rocketbank/core/model/migration/Migration$CityList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/migration/Migration$CityList;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lru/rocketbank/core/model/migration/Migration$CityList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1075
    instance-of p2, p1, Lcom/google/gson/JsonNull;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2047
    :cond_0
    instance-of p2, p1, Lcom/google/gson/JsonArray;

    if-eqz p2, :cond_3

    .line 1105
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 198
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    move v0, p3

    .line 199
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 3047
    instance-of v2, v1, Lcom/google/gson/JsonArray;

    if-eqz v2, :cond_1

    .line 2105
    check-cast v1, Lcom/google/gson/JsonArray;

    .line 201
    new-instance v2, Lru/rocketbank/core/model/migration/Migration$City;

    invoke-virtual {v1, p3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lru/rocketbank/core/model/migration/Migration$City;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a JSON Array: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_2
    new-instance p1, Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-direct {p1, p2}, Lru/rocketbank/core/model/migration/Migration$CityList;-><init>(Ljava/util/List;)V

    return-object p1

    .line 1107
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
