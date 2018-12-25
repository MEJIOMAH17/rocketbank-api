.class final Lru/rocketbank/core/widgets/RocketSnackbar$2;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSnackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$2;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 336
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$2;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$000(Lru/rocketbank/core/widgets/RocketSnackbar;I)V

    return-void
.end method
