.class public Lru/rocketbank/core/model/register/DeviceRegisterData;
.super Ljava/lang/Object;
.source "DeviceRegisterData.java"


# instance fields
.field private response:Lru/rocketbank/core/model/dto/ResponseData;

.field private smsVerification:Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms_verification"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/register/DeviceRegisterData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public getSmsVerification()Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/register/DeviceRegisterData;->smsVerification:Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;

    return-object v0
.end method

.method public setResponse(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/register/DeviceRegisterData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method

.method public setSmsVerification(Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/model/register/DeviceRegisterData;->smsVerification:Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;

    return-void
.end method
