.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeInn()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $innKppHolder:Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

.field final synthetic $innProgressBar:Landroid/view/View;

.field final synthetic $kpp:Landroid/widget/TextView;

.field final synthetic $recipientName:Landroid/widget/TextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/fragments/transfers/InnKpp;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innProgressBar:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$kpp:Landroid/widget/TextView;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$recipientName:Landroid/widget/TextView;

    iput-object p5, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innKppHolder:Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 9

    .line 649
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getRemittanceKind$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v1

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innProgressBar:Landroid/view/View;

    const-string p1, "innProgressBar"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$kpp:Landroid/widget/TextView;

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$recipientName:Landroid/widget/TextView;

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innKppHolder:Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innKppHolder:Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;->getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->$innKppHolder:Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;->getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$requestInn(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;ZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
