.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;->call(Ljava/lang/Boolean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Boolean;)Z
    .locals 0

    .line 333
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
