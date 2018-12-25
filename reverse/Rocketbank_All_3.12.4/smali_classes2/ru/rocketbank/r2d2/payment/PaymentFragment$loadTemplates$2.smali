.class public final Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;
.super Lrx/Subscriber;
.source "PaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->loadTemplates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/transfers/Template;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFragment.kt\nru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n624#2:354\n713#2,2:355\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentFragment.kt\nru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2\n*L\n173#1:354\n173#1,2:355\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

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

    .line 160
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getSwipeRefreshView()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 161
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    const v0, 0x7f110462

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 164
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 163
    invoke-static {v0, p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->make$2c974f84(Landroid/view/View;Ljava/lang/CharSequence;)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    const/4 v0, -0x1

    .line 166
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public final onNext(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getSwipeRefreshView()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTemplateAdapter$p(Lru/rocketbank/r2d2/payment/PaymentFragment;)Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 355
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/rocketbank/core/model/transfers/Template;

    .line 173
    iget-object v5, v4, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iget-object v4, v4, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    const-string v6, "it.provider"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->getProvider_id()I

    move-result v4

    invoke-static {v5, v4}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getProvider(Lru/rocketbank/r2d2/payment/PaymentFragment;I)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_3
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    .line 174
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->setTemplatesList(Ljava/util/List;)V

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getTemplatesView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
