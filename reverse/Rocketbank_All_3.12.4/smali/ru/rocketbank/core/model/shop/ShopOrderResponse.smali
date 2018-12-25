.class public final Lru/rocketbank/core/model/shop/ShopOrderResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "ShopOrderResponse.kt"


# instance fields
.field private error:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->status:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->error:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrderResponse;->status:Ljava/lang/String;

    return-void
.end method
