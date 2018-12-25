.class final Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;
.super Ljava/lang/Object;
.source "AtmsManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/AtmsManager;->requireUpdate(I)V
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $atmsTime:J

.field final synthetic this$0:Lru/rocketbank/core/manager/AtmsManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/AtmsManager;J)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    iput-wide p2, p0, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;->$atmsTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private call(Lru/rocketbank/core/network/model/AtmsCashinResponse;)J
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    iget-object v1, p1, Lru/rocketbank/core/network/model/AtmsCashinResponse;->atms:Ljava/util/List;

    const-string v2, "response.atms"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/AtmsManager;->updateMap(Ljava/util/List;)V

    .line 209
    iget-wide v0, p1, Lru/rocketbank/core/network/model/AtmsCashinResponse;->lastUpdate:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 212
    iget-wide v0, p0, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;->$atmsTime:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 22
    check-cast p1, Lru/rocketbank/core/network/model/AtmsCashinResponse;

    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;->call(Lru/rocketbank/core/network/model/AtmsCashinResponse;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
