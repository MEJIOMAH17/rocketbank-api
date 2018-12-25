.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;
    }
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final color:I

.field private final icon:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 138
    invoke-direct {p0, v0, p4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->text:Ljava/lang/String;

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->color:I

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->amount:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->icon:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const p2, 0x7f060228

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 138
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    .line 138
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->color:I

    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->text:Ljava/lang/String;

    return-object v0
.end method
