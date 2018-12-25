.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation$TagOperationViewHolder;
    }
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final color:I

.field private final count:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 191
    invoke-direct {p0, v0, p5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->name:Ljava/lang/String;

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->count:I

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->amount:Ljava/lang/String;

    iput p4, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->color:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 191
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    .line 191
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->color:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 191
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->count:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->name:Ljava/lang/String;

    return-object v0
.end method
