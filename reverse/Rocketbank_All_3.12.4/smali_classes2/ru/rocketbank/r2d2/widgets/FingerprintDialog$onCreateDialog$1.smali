.class final Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "FingerprintDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/FingerprintDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getPreferences$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "touch_state"

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getScanResult$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getTouchManager$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getTouchManager$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->close()V

    .line 97
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p2, Lru/rocketbank/core/events/ChangeFingerprintSwitchEvent;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getScanResult$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Z

    move-result v0

    invoke-direct {p2, v0}, Lru/rocketbank/core/events/ChangeFingerprintSwitchEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;->this$0:Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
