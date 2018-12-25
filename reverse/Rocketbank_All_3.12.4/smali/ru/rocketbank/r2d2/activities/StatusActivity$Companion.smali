.class public final Lru/rocketbank/r2d2/activities/StatusActivity$Companion;
.super Ljava/lang/Object;
.source "StatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lru/rocketbank/r2d2/activities/StatusActivity<",
            "*>;>;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;->getKEY_TITLE()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected final getKEY_TITLE()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-static {}, Lru/rocketbank/r2d2/activities/StatusActivity;->access$getKEY_TITLE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
