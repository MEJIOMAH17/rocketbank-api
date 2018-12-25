.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;
.super Ljava/lang/Object;
.source "DepositFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$000(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$002(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Z)Z

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$100(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    return-void
.end method
