.class public final Lru/rocketbank/core/model/ResetShortCodeRespone;
.super Ljava/lang/Object;
.source "ResetShortCodeRespone.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;
    }
.end annotation


# instance fields
.field private resetShortCode:Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reset_short_code"
    .end annotation
.end field

.field private responseData:Lru/rocketbank/core/model/dto/ResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResetShortCode()Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/ResetShortCodeRespone;->resetShortCode:Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;

    return-object v0
.end method

.method public final getResponseData()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/ResetShortCodeRespone;->responseData:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public final setResetShortCode(Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/ResetShortCodeRespone;->resetShortCode:Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;

    return-void
.end method

.method public final setResponseData(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/ResetShortCodeRespone;->responseData:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method
