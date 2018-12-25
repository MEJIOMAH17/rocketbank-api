.class final Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "PaymentProvidersFragment.kt"

# interfaces
.implements Lrx/functions/Action2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action2<",
        "Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;",
        "Lru/rocketbank/core/model/provider/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

    check-cast p2, Lru/rocketbank/core/model/provider/Provider;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;->call(Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;Lru/rocketbank/core/model/provider/Provider;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;Lru/rocketbank/core/model/provider/Provider;)V
    .locals 8

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "a"

    .line 69
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "n"

    .line 70
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1086
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x1

    .line 74
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 2086
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x2

    .line 75
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    .line 3086
    new-instance v5, Landroid/support/v4/util/Pair;

    invoke-direct {v5, v4, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 72
    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p2, v2, v0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivityStarterKt;->startPaymentActivity(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    .line 79
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string p1, "p"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivityStarterKt;->startPaymentActivity$default(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method
