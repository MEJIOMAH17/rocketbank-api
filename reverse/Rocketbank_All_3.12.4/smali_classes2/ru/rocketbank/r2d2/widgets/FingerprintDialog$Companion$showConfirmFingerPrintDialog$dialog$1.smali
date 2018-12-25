.class final Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1;
.super Ljava/lang/Object;
.source "FingerprintDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    sget-object p1, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
