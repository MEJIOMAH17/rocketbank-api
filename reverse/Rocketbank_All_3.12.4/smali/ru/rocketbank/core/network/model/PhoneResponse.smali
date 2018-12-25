.class public final Lru/rocketbank/core/network/model/PhoneResponse;
.super Ljava/lang/Object;
.source "PhoneResponse.kt"


# instance fields
.field private response:Lru/rocketbank/core/model/ResponseModel;

.field private smsVerification:Lru/rocketbank/core/model/ValidationModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms_verification"
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

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/PhoneResponse;->response:Lru/rocketbank/core/model/ResponseModel;

    return-object v0
.end method

.method public final getSmsVerification()Lru/rocketbank/core/model/ValidationModel;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/PhoneResponse;->smsVerification:Lru/rocketbank/core/model/ValidationModel;

    return-object v0
.end method

.method public final setResponse(Lru/rocketbank/core/model/ResponseModel;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/network/model/PhoneResponse;->response:Lru/rocketbank/core/model/ResponseModel;

    return-void
.end method

.method public final setSmsVerification(Lru/rocketbank/core/model/ValidationModel;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/model/PhoneResponse;->smsVerification:Lru/rocketbank/core/model/ValidationModel;

    return-void
.end method
