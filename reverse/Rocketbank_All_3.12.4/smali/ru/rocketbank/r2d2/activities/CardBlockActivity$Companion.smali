.class public final Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;
.super Ljava/lang/Object;
.source "CardBlockActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/CardBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardBlockActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardBlockActivity.kt\nru/rocketbank/r2d2/activities/CardBlockActivity$Companion\n*L\n1#1,101:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;Z)V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;Landroid/content/Context;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;->start(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/CardBlockActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_block"

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_from_feed"

    .line 97
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string v0, "block_reason"

    .line 98
    invoke-virtual {p2}, Lru/rocketbank/core/model/enums/BlockReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/CardBlockActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_block"

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_from_feed"

    .line 87
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
