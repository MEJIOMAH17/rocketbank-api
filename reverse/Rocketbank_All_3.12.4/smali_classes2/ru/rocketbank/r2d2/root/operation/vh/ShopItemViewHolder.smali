.class public final Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "ShopItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopItemViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopItemViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder\n*L\n1#1,34:1\n*E\n"
.end annotation


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 15
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 16
    new-instance v0, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "itemView.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-direct {v0, p1, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 19
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 6

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.network.model.ContextShopItem"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/core/network/model/ContextShopItem;

    .line 25
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->operationIcon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "itemView.operationIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContextShopItem;->getImage_url()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v4, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 26
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContextShopItem;->getPrice()D

    move-result-wide v2

    neg-double v2, v2

    sget-object v4, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContextShopItem;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContextShopItem;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 28
    :goto_0
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lru/rocketbank/r2d2/R$id;->amount:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v4, "itemView.amount"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lru/rocketbank/r2d2/R$id;->rocketroubles:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v4, "itemView.rocketroubles"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lru/rocketbank/r2d2/R$id;->name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v3, "itemView.name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContextShopItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "itemView.comment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    :cond_2
    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method
