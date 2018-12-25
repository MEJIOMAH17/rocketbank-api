.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $uinEditText:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;->$uinEditText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 190
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;->$uinEditText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "uinEditText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$checkUinAndShowError(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)Z

    :cond_0
    return-void
.end method
