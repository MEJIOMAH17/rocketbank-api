.class public final Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;
.super Ljava/lang/Object;
.source "NotificationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/NotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createNotificationDialog(Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/NotificationDialog;
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;-><init>()V

    .line 199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TOKEN"

    .line 200
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
