.class public final Lru/rocketbank/r2d2/activities/operation/model/StatItem;
.super Ljava/lang/Object;
.source "StatItem.kt"


# instance fields
.field private amount:Ljava/lang/String;

.field private month:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->month:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->amount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonth()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->month:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->amount:Ljava/lang/String;

    return-void
.end method

.method public final setMonth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->month:Ljava/lang/String;

    return-void
.end method
