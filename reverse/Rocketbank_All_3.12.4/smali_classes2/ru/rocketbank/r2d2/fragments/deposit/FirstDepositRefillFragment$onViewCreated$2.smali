.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$2;
.super Lru/rocketbank/core/widgets/listener/AddCurrencyListener;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected final getCurrency()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getCurrentCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
