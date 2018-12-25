.class public final Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;
.super Ljava/lang/Object;
.source "ChooseFriendActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/ChooseFriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_CONTACT()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;->access$getKEY_CONTACT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startForResult(Landroid/app/Activity;I)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
