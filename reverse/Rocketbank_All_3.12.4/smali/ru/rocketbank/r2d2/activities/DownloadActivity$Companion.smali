.class public final Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;
.super Ljava/lang/Object;
.source "DownloadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadActivity.kt\nru/rocketbank/r2d2/activities/DownloadActivity$Companion\n*L\n1#1,308:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_PDF"

    .line 302
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "KEY_MODE"

    .line 303
    sget-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_DOWNLOAD:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startDownloadReference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TOKEN"

    .line 283
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "KEY_KIND"

    .line 284
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "KEY_MODE"

    .line 285
    sget-object p3, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startDownloadSecured(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_PDF"

    .line 294
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "KEY_MODE"

    .line 295
    sget-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_DOWNLOAD_SECURED:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
