.class public final Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;
.super Ljava/lang/Object;
.source "FingerprintDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getSwirlView$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lcom/mattprecious/swirl/SwirlView;

    move-result-object v0

    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getTouchFingerString$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
