.class public final Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;
.super Ljava/lang/Object;
.source "AccountDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/AccountDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDetailsActivity.kt\nru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion\n*L\n1#1,42:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getEXTRA_TOKEN()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->access$getEXTRA_TOKEN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    sget-object v1, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;->getEXTRA_TOKEN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class p2, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
