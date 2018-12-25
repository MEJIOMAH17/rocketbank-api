.class public final Lru/rocketbank/core/network/model/TariffOptionsResponse;
.super Ljava/lang/Object;
.source "TariffOptionsResponse.java"


# instance fields
.field private response:Lru/rocketbank/core/model/ResponseModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation
.end field

.field private tariffOption:Lru/rocketbank/core/model/OptionModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tariff_option"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResponse()Lru/rocketbank/core/model/ResponseModel;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffOptionsResponse;->response:Lru/rocketbank/core/model/ResponseModel;

    return-object v0
.end method

.method public final getTariffOption()Lru/rocketbank/core/model/OptionModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffOptionsResponse;->tariffOption:Lru/rocketbank/core/model/OptionModel;

    return-object v0
.end method
