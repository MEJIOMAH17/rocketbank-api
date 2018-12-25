.class public final Lru/rocketbank/core/network/model/DepositOpenResult;
.super Ljava/lang/Object;
.source "DepositOpenResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;
    }
.end annotation


# instance fields
.field private deposit:Lru/rocketbank/core/model/DepositModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "account_card"
        }
        value = "deposit"
    .end annotation
.end field

.field private response:Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeposit()Lru/rocketbank/core/model/DepositModel;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositOpenResult;->deposit:Lru/rocketbank/core/model/DepositModel;

    return-object v0
.end method

.method public final getResponse()Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositOpenResult;->response:Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;

    return-object v0
.end method

.method public final setDeposit(Lru/rocketbank/core/model/DepositModel;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositOpenResult;->deposit:Lru/rocketbank/core/model/DepositModel;

    return-void
.end method

.method public final setResponse(Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositOpenResult;->response:Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;

    return-void
.end method
