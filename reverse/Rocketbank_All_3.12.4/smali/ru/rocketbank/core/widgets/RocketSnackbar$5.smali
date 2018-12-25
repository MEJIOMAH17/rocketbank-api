.class final Lru/rocketbank/core/widgets/RocketSnackbar$5;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;


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

    .line 546
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$5;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewDetachedFromWindow$3c7ec8c3()V
    .locals 2

    .line 552
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$5;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$5$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$5$1;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
