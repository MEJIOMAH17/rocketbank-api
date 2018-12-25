.class Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$1;
.super Ljava/lang/Object;
.source "RenameDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onOkClick(Landroid/view/View;)V

    return-void
.end method
