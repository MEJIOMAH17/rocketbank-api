.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;
.super Ljava/lang/Object;
.source "AnalyticsMerchantFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsMerchantFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsMerchantFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion\n*L\n1#1,84:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createArguments(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;Ljava/util/Calendar;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "merchant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentDateTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_ANALYTICS_MERCHANT"

    .line 28
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "KEY_CURRENT_DATE"

    .line 29
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public final getDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 24
    invoke-static {}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
