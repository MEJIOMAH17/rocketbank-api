.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;
.super Ljava/lang/Object;
.source "NewPassportActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportActivity.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion\n*L\n1#1,90:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startForResult(Landroid/app/Activity;Lru/rocketbank/core/NewPassportOperation;I)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATION"

    .line 84
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 86
    invoke-virtual {p1, v0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
