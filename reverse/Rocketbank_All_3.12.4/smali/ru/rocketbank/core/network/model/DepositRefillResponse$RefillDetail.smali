.class public final Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;
.super Ljava/lang/Object;
.source "DepositRefillResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/DepositRefillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefillDetail"
.end annotation


# instance fields
.field private amount:D

.field private currency:Ljava/lang/String;

.field private formattedAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatted_amount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmount()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->amount:D

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedAmount()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->formattedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmount(D)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->amount:D

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setFormattedAmount(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->formattedAmount:Ljava/lang/String;

    return-void
.end method
