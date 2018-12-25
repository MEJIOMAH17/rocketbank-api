.class Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$4;
.super Ljava/lang/Object;
.source "RenameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->showKeyboard()V
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

    .line 159
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$4;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$4;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->show(Landroid/widget/EditText;)V

    return-void
.end method
