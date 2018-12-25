.class public final Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$3;
.super Lrx/Subscriber;
.source "GaToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/GaToken;->sendGaToken(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/Empty;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
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

    const-string v0, "GA"

    const-string v1, "Error: "

    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    sget-object p1, Lru/rocketbank/r2d2/utils/GaToken;->INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/GaToken;->setSending(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lru/rocketbank/core/model/Empty;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$3;->onNext(Lru/rocketbank/core/model/Empty;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/Empty;)V
    .locals 1

    const-string p1, "GA"

    const-string v0, "done"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p1, Lru/rocketbank/r2d2/utils/GaToken;->INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/GaToken;->setSent(Z)V

    return-void
.end method
