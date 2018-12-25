.class public final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;
.super Lrx/Subscriber;
.source "TransferFriendAmountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->onTextChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/response/CommissionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommission$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v0, 0x7f110454

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommissionSubscription$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lrx/Subscription;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$setCommissionSubscription$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lrx/Subscription;)V

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommissionSwitcher$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->disableNextButton()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lru/rocketbank/core/model/response/CommissionResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->onNext(Lru/rocketbank/core/model/response/CommissionResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/response/CommissionResponse;)V
    .locals 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionResponse;->getCommission()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommission$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v3}, Lru/rocketbank/core/model/TariffModel;->getPermalink()Lru/rocketbank/core/model/enums/PermalinkTariff;

    move-result-object v3

    sget-object v4, Lru/rocketbank/core/model/enums/PermalinkTariff;->METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    if-ne v3, v4, :cond_4

    const v3, 0x7f110455

    goto :goto_0

    :cond_4
    const v3, 0x7f110453

    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {v6}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getMoneyFormatter$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionResponse;->getCommission()F

    move-result p1

    float-to-double v7, p1

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->currencyCode:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, p1, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v5}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 132
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommission$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const v0, 0x7f110456

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getCommissionSwitcher$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 136
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->enableNextButton()V

    return-void
.end method
