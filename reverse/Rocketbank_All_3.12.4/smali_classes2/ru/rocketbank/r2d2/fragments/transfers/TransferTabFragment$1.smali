.class Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;
.super Lrx/Subscriber;
.source "TransferTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/TransferTemplates;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$100(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V

    const-string v0, "TransferTabFragment"

    const-string v1, "Failed to load lists"

    .line 226
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, Lru/rocketbank/core/model/TransferTemplates;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->onNext(Lru/rocketbank/core/model/TransferTemplates;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/TransferTemplates;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferTemplates;->getLegalEntities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$202(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferTemplates;->getIndividuals()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$302(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferTemplates;->getBudget()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$402(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 235
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$500(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V

    .line 236
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$600(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V

    return-void
.end method
