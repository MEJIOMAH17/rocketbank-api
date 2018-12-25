.class final Lru/rocketbank/core/widgets/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/SnackbarManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/SnackbarManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager$1;->this$0:Lru/rocketbank/core/widgets/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager$1;->this$0:Lru/rocketbank/core/widgets/SnackbarManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-static {v0, p1}, Lru/rocketbank/core/widgets/SnackbarManager;->access$000(Lru/rocketbank/core/widgets/SnackbarManager;Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V

    const/4 p1, 0x1

    return p1
.end method
