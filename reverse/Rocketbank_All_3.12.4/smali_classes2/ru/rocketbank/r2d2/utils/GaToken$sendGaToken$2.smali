.class final Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;
.super Ljava/lang/Object;
.source "GaToken.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/GaToken;->sendGaToken(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $rocketApi:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method constructor <init>(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;->$rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/Empty;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;->$rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    new-instance v1, Lru/rocketbank/core/model/ValueRequest;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lru/rocketbank/core/model/ValueRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->sendGoogleAdvId(Lru/rocketbank/core/model/ValueRequest;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
