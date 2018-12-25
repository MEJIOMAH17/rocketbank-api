.class public final Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;
.super Ljava/lang/Object;
.source "ChangeCodewordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_CHANGE_CODEWORD()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-static {}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->access$getKEY_CHANGE_CODEWORD$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/app/Activity;Lru/rocketbank/core/model/ChangeCodeWord;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeCodeWord"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;->getKEY_CHANGE_CODEWORD()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
