.class public Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.super Ljava/lang/Object;
.source "GenericRequestResponseData.kt"


# instance fields
.field private errors:Ljava/lang/String;

.field private final response:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrors()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public final setErrors(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->errors:Ljava/lang/String;

    return-void
.end method
