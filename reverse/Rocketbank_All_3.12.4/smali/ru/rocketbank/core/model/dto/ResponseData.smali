.class public Lru/rocketbank/core/model/dto/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private registrationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registration_status"
    .end annotation
.end field

.field private showIt:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_it"
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ResponseData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ResponseData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationStatus()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ResponseData;->registrationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getShowIt()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/ResponseData;->showIt:Z

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 37
    iget v0, p0, Lru/rocketbank/core/model/dto/ResponseData;->status:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/rocketbank/core/model/dto/ResponseData;->code:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/core/model/dto/ResponseData;->description:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationStatus(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/core/model/dto/ResponseData;->registrationStatus:Ljava/lang/String;

    return-void
.end method

.method public setShowIt(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lru/rocketbank/core/model/dto/ResponseData;->showIt:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 41
    iput p1, p0, Lru/rocketbank/core/model/dto/ResponseData;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v1, p0, Lru/rocketbank/core/model/dto/ResponseData;->description:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "description: \'%s\'"

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lru/rocketbank/core/model/dto/ResponseData;->description:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/model/dto/ResponseData;->code:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", code: \'%s\'"

    .line 26
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lru/rocketbank/core/model/dto/ResponseData;->code:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/model/dto/ResponseData;->registrationStatus:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", registrationStatus: \'%s\'"

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lru/rocketbank/core/model/dto/ResponseData;->registrationStatus:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
