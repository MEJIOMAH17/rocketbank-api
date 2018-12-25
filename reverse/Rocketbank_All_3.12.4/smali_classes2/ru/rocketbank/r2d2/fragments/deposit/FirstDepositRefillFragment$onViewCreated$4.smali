.class final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    .line 174
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$isDepositCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$setDepositCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Z)V

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$updateCurrentCurrencyButton(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$updateCurrencySymbol(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
