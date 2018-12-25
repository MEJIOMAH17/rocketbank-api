.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $innProgressBar:Landroid/view/View;

.field final synthetic $kpp:Landroid/widget/TextView;

.field final synthetic $recipient_name:Landroid/widget/TextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$kpp:Landroid/widget/TextView;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$recipient_name:Landroid/widget/TextView;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$innProgressBar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 739
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$kpp:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$recipient_name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->$innProgressBar:Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 1014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void
.end method
