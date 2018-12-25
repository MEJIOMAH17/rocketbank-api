.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;
.super Ljava/lang/Object;
.source "RocketRubleInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_REVEAL()Ljava/lang/String;
    .locals 1

    .line 128
    invoke-static {}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getKEY_REVEAL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_X()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getKEY_X$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_Y()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getKEY_Y$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startActivity(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Context;ZII)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->getKEY_REVEAL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->getKEY_X()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->getKEY_Y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
