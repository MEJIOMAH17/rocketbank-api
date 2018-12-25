.class public final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;
.super Ljava/lang/Object;
.source "APManageCardActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPManageCardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APManageCardActivity.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion\n*L\n1#1,135:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic startForResult$default(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidPayToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_CARD"

    .line 128
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "IS_DEFAULT"

    .line 129
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
