.class public final Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;
.super Ljava/lang/Object;
.source "ChangeTextDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;
    .locals 2

    .line 100
    new-instance v0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
