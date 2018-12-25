.class public final Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;
.super Ljava/lang/Object;
.source "PhotoViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPHOTO_VIEW_URI()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->access$getPHOTO_VIEW_URI$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPHOTO_VIEW_URL()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->access$getPHOTO_VIEW_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;->getPHOTO_VIEW_URI()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;->getPHOTO_VIEW_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
