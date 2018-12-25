.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAccountAdapter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->getItem(I)Lru/rocketbank/core/model/facade/Account;

    move-result-object p2

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$setCurrentAccount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/model/facade/Account;)V

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;->convertTextToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAmountChangeSubscriber$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/functions/Action1;

    move-result-object p2

    invoke-interface {p2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$updateCurrentCurrencyButton(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
