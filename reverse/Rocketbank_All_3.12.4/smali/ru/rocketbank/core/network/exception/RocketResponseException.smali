.class public final Lru/rocketbank/core/network/exception/RocketResponseException;
.super Ljava/lang/Exception;
.source "RocketResponseException.kt"


# instance fields
.field private genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

.field private retrofitError:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "retrofitError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->retrofitError:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    const-string v0, "retrofitError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    iput-object p2, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->retrofitError:Ljava/lang/Throwable;

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result p2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2

    .line 21
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getCode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x56d6349f

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "INCORRECT_TOKEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p2, Lru/rocketbank/core/events/EventTokenIsDead;

    invoke-direct {p2}, Lru/rocketbank/core/events/EventTokenIsDead;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    return-object v0
.end method

.method public final getGenericResponse()Lru/rocketbank/core/model/dto/GenericRequestResponseData;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    return-object v0
.end method

.method public final getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public final isNetworkError()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->retrofitError:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method

.method public final isStatusEqual(I)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method public final setGenericResponse(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->genericResponse:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;->retrofitError:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
