.class public final Lru/rocketbank/r2d2/service/SendLocationIntentService$onLocation$1;
.super Lrx/Subscriber;
.source "SendLocationIntentService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/service/SendLocationIntentService;->onLocation(JLandroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/ResponseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PushService"

    const-string v1, "Failed send coords."

    .line 81
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/service/SendLocationIntentService$onLocation$1;->onNext(Lru/rocketbank/core/model/dto/ResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 1

    const-string v0, "responseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
