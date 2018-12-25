.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentDetailsFragment.kt\nru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n1246#2:423\n1315#2,3:424\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentDetailsFragment.kt\nru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1\n*L\n117#1:423\n117#1,3:424\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$getTemplate$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Lru/rocketbank/core/model/transfers/Template;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p1}, Lru/rocketbank/core/model/transfers/Template;-><init>()V

    .line 114
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$getProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    .line 115
    new-instance v0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;-><init>()V

    iput-object v0, p1, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    .line 117
    iget-object v0, p1, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    const-string v1, "t.provider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$get_paymentFields$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "_paymentFields.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 424
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 425
    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    new-instance v4, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v6, "it.value"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    invoke-interface {v3}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->getParameterValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->setFields(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentDetailsActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$getProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->replaceAmountFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method
