.class public final Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;
.super Lrx/Subscriber;
.source "TransfersFromCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->hideCard(Lru/rocketbank/core/model/CardModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cardModel:Lru/rocketbank/core/model/CardModel;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/CardModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/CardModel;",
            ")V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V

    .line 238
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v0, 0x7f11031c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$getListAdapter$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->remove(Lru/rocketbank/core/model/CardModel;)V

    .line 248
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getTransferLinkedCards()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :catch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V

    return-void
.end method
