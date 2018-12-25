.class public final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fio:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/widgets/RocketEditText;",
            ")V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;->$fio:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->Companion:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;->checkFio(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;->$fio:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "fio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    const v1, 0x7f1101a0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
