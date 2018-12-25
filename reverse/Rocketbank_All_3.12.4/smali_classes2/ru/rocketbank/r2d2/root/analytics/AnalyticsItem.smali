.class public abstract Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.super Ljava/lang/Object;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;,
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$Companion;

.field public static final ITEM_TYPE_CHART:I = 0x1

.field public static final ITEM_TYPE_EMPTY_ANALYTICS:I = 0x7

.field public static final ITEM_TYPE_HEADER:I = 0x0

.field public static final ITEM_TYPE_ITEM_MERCHANT_OPERATION:I = 0x5

.field public static final ITEM_TYPE_ITEM_TAG_OPERATION:I = 0x6

.field public static final ITEM_TYPE_OPERATION:I = 0x4

.field public static final ITEM_TYPE_SECTION:I = 0x3

.field public static final ITEM_TYPE_SECTION_PERSON:I = 0x2


# instance fields
.field private onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onUpdate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$Companion;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->type:I

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnUpdate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->onUpdate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 50
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->type:I

    return v0
.end method

.method public final setOnClick(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->onUpdate:Lkotlin/jvm/functions/Function0;

    return-void
.end method
