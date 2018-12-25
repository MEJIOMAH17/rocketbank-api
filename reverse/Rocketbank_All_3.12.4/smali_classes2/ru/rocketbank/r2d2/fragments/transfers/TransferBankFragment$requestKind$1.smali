.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestKind(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->call(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;)V
    .locals 4

    .line 663
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->getErrors()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-direct {v2}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->getErrors()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->setErrors(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 666
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->getRemittanceKind()Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$setRemittanceKind$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V

    .line 667
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$setMessage$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$setExtra$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;)V

    .line 669
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getRemittanceKind$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getMessage$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getExtra$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$isGkh$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$showKind(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 670
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    sget v0, Lru/rocketbank/r2d2/R$id;->cardNumberProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$subscribeRecipientName(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    return-void
.end method
