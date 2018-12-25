.class Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->access$000(Lru/rocketbank/r2d2/fragments/AlertDialogFragment;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;->OnPositive()V

    return-void
.end method
