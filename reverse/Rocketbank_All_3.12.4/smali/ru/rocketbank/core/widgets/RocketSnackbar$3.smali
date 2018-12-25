.class final Lru/rocketbank/core/widgets/RocketSnackbar$3;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Lru/rocketbank/core/widgets/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;
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

    .line 496
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$3;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(I)V
    .locals 5

    .line 504
    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$3;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final show()V
    .locals 4

    .line 499
    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$3;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
