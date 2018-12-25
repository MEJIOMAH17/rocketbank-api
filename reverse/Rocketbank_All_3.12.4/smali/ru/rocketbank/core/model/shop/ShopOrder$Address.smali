.class public final Lru/rocketbank/core/model/shop/ShopOrder$Address;
.super Ljava/lang/Object;
.source "ShopOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/shop/ShopOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final data:Lcom/google/gson/JsonElement;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/shop/ShopOrder$Address;Ljava/lang/String;Lcom/google/gson/JsonElement;ILjava/lang/Object;)Lru/rocketbank/core/model/shop/ShopOrder$Address;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/model/shop/ShopOrder$Address;->copy(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lru/rocketbank/core/model/shop/ShopOrder$Address;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lru/rocketbank/core/model/shop/ShopOrder$Address;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/model/shop/ShopOrder$Address;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/model/shop/ShopOrder$Address;-><init>(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/shop/ShopOrder$Address;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/shop/ShopOrder$Address;

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    iget-object p1, p1, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getData()Lcom/google/gson/JsonElement;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address(string="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Address;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
