.class final Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 149
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->access$setUIFailed(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;Ljava/lang/String;)V

    return-void
.end method
