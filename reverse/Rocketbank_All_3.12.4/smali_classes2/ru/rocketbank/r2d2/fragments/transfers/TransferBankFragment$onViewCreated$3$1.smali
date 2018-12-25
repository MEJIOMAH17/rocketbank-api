.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->$oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "oktmo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    const v2, 0x7f110223

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
