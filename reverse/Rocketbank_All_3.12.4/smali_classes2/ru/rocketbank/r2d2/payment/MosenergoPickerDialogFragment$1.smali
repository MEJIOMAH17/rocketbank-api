.class Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "MosenergoPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;

.field final synthetic val$dialog:Lru/rocketbank/core/widgets/MosenergoPickerDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;Lru/rocketbank/core/widgets/MosenergoPickerDialog;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;->val$dialog:Lru/rocketbank/core/widgets/MosenergoPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->access$000(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->access$000(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;->val$dialog:Lru/rocketbank/core/widgets/MosenergoPickerDialog;

    invoke-virtual {p2}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->getIndex()I

    move-result p2

    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;->onMosenergoSelected(I)V

    :cond_0
    return-void
.end method
