.class Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/AlertDialogFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->access$000(Lru/rocketbank/r2d2/fragments/AlertDialogFragment;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lru/rocketbank/r2d2/RocketHandler;->getInstance()Lru/rocketbank/r2d2/RocketHandler;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1$1;-><init>(Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/RocketHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
