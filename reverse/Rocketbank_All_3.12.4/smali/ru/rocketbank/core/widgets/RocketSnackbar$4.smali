.class final Lru/rocketbank/core/widgets/RocketSnackbar$4;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketSnackbar;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$4;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/view/View;)V
    .locals 1

    .line 522
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$4;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$000(Lru/rocketbank/core/widgets/RocketSnackbar;I)V

    return-void
.end method

.method public final onDragStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$4;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/SnackbarManager;->cancelTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    return-void

    .line 535
    :pswitch_1
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$4;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/SnackbarManager;->restoreTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
