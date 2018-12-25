.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;
    }
.end annotation


# instance fields
.field private final icon:Landroid/graphics/Bitmap;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 148
    invoke-direct {p0, v1, v0, v1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;->text:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;->icon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;->text:Ljava/lang/String;

    return-object v0
.end method
