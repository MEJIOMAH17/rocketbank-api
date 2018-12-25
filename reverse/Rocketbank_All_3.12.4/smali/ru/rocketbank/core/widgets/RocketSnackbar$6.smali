.class final Lru/rocketbank/core/widgets/RocketSnackbar$6;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;


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

    .line 572
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$6;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange$5b6f797d()V
    .locals 2

    .line 575
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$6;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$400(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    .line 576
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$6;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$500(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->setOnLayoutChangeListener(Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;)V

    return-void
.end method
