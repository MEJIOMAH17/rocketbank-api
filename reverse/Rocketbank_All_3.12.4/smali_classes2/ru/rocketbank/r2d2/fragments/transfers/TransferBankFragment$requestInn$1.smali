.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestInn(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;ZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
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
        "Lru/rocketbank/core/model/InnResponseData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $innProgressBar:Landroid/view/View;

.field final synthetic $kpp:Landroid/widget/TextView;

.field final synthetic $kppField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field final synthetic $recipientNameField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field final synthetic $recipient_name:Landroid/widget/TextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/view/View;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$innProgressBar:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$kppField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$recipientNameField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    iput-object p5, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$kpp:Landroid/widget/TextView;

    iput-object p6, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$recipient_name:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lru/rocketbank/core/model/InnResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->call(Lru/rocketbank/core/model/InnResponseData;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/InnResponseData;)V
    .locals 4

    .line 727
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$innProgressBar:Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 1014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getKpp()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 729
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$kppField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getKpp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 731
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getRecipient_name()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-nez v1, :cond_5

    .line 732
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$recipientNameField:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getRecipient_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 734
    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$kpp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getGisGkh()Z

    move-result v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$setGkh$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V

    .line 736
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->$recipient_name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getCorporateViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkhVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/InnResponseData;->getGisGkh()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
