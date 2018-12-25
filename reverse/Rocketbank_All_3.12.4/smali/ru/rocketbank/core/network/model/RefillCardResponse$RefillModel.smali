.class public Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;
.super Ljava/lang/Object;
.source "RefillCardResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/RefillCardResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefillModel"
.end annotation


# instance fields
.field private amount:F

.field private currency:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/network/model/RefillCardResponse;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->this$0:Lru/rocketbank/core/network/model/RefillCardResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 83
    iget v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->amount:F

    return v0
.end method

.method public getCurrency()Lru/rocketbank/core/model/enums/Currency;
    .locals 1

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->currency:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->currency:Ljava/lang/String;

    return-object v0
.end method
