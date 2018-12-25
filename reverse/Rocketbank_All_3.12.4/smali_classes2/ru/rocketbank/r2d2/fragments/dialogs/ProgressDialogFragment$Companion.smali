.class public final Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance$default(Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;IILjava/lang/Object;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const p1, 0x7f110385

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;->newInstance(I)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance()Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;->newInstance$default(Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;IILjava/lang/Object;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(I)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    .locals 3

    .line 49
    new-instance v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    .locals 3

    const-string v0, "messageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message_text"

    .line 59
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
