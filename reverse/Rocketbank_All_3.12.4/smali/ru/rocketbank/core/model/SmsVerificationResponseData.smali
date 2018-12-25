.class public Lru/rocketbank/core/model/SmsVerificationResponseData;
.super Ljava/lang/Object;
.source "SmsVerificationResponseData.java"


# instance fields
.field private deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivery_scheduled"
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private fillForm:Lru/rocketbank/core/model/FillFormData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fill_form"
    .end annotation
.end field

.field private form:Lru/rocketbank/core/model/FormData;

.field private interesting:Z

.field private response:Lru/rocketbank/core/model/dto/ResponseData;

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeliveryScheduled()Lru/rocketbank/core/model/DeliveryScheduledData;
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFillForm()Lru/rocketbank/core/model/FillFormData;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->fillForm:Lru/rocketbank/core/model/FillFormData;

    return-object v0
.end method

.method public getForm()Lru/rocketbank/core/model/FormData;
    .locals 1

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->form:Lru/rocketbank/core/model/FormData;

    return-object v0
.end method

.method public getInteresting()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->interesting:Z

    return v0
.end method

.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public setDeliveryScheduled(Lru/rocketbank/core/model/DeliveryScheduledData;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->email:Ljava/lang/String;

    return-void
.end method

.method public setFillForm(Lru/rocketbank/core/model/FillFormData;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->fillForm:Lru/rocketbank/core/model/FillFormData;

    return-void
.end method

.method public setForm(Lru/rocketbank/core/model/FormData;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->form:Lru/rocketbank/core/model/FormData;

    return-void
.end method

.method public setInteresting(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->interesting:Z

    return-void
.end method

.method public setResponse(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/SmsVerificationResponseData;->user:Lru/rocketbank/core/model/UserModel;

    return-void
.end method
