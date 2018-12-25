.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;,
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.7f

.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;


# instance fields
.field private final amount:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final icon:Ljava/lang/String;

.field private final isMine:Z

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 169
    invoke-direct {p0, v0, p6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->text:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->date:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->icon:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->amount:Ljava/lang/String;

    iput-boolean p5, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->isMine:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 10

    and-int/lit8 v1, p7, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    .line 169
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getALPHA$cp()F
    .locals 1

    .line 164
    sget v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->ALPHA:F

    return v0
.end method

.method public static final getALPHA()F
    .locals 1

    sget v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->ALPHA:F

    return v0
.end method


# virtual methods
.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final isMine()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->isMine:Z

    return v0
.end method
