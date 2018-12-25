.class public final Lru/rocketbank/core/network/model/DepositRefillResponse;
.super Ljava/lang/Object;
.source "DepositRefillResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;
    }
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private formattedRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatted_rate"
    .end annotation
.end field

.field private from:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

.field private rate:D

.field private status:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private to:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedRate()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->formattedRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->from:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    return-object v0
.end method

.method public final getRate()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->rate:D

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->to:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    return-object v0
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setFormattedRate(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->formattedRate:Ljava/lang/String;

    return-void
.end method

.method public final setFrom(Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->from:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    return-void
.end method

.method public final setRate(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->rate:D

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->text:Ljava/lang/String;

    return-void
.end method

.method public final setTo(Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositRefillResponse;->to:Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    return-void
.end method
