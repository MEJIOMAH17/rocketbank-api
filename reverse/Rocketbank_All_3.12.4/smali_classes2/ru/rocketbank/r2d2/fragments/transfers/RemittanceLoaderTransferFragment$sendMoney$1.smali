.class final Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;
.super Ljava/lang/Object;
.source "RemittanceLoaderTransferFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->sendMoney()V
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
        "Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->call(Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;)V
    .locals 2

    const-string v0, "r"

    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;->getRemittance()Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->access$setUISuccess(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->access$setUIFailed(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->access$setUIFailed(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;Ljava/lang/String;)V

    return-void
.end method
