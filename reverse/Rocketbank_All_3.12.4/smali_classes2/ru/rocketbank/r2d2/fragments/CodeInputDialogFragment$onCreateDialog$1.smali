.class public final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateDialog$1;
.super Landroid/app/Dialog;
.source "CodeInputDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->goToHome(Landroid/app/Activity;)V

    return-void
.end method
