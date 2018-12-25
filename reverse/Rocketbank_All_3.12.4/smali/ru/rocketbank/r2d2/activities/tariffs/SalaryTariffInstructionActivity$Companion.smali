.class public final Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;
.super Ljava/lang/Object;
.source "SalaryTariffInstructionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSalaryTariffInstructionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SalaryTariffInstructionActivity.kt\nru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion\n*L\n1#1,67:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;-><init>()V

    return-void
.end method

.method private static synthetic KEY_INFO$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_PDF$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-static {}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->access$getKEY_PDF$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->access$getKEY_INFO$cp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
