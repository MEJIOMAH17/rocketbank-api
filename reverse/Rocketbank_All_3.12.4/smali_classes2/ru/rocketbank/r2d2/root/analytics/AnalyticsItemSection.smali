.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection$ItemViewSectionHolder;
    }
.end annotation


# instance fields
.field private final color:I

.field private final icon:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 156
    invoke-direct {p0, v1, v0, v2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->icon:Ljava/lang/String;

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->color:I

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 156
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->color:I

    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->text:Ljava/lang/String;

    return-object v0
.end method
