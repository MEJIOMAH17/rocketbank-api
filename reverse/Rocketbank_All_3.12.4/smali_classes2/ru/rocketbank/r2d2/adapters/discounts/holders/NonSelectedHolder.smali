.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;
.super Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
.source "NonSelectedHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNonSelectedHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NonSelectedHolder.kt\nru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder\n*L\n1#1,268:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

.field private final confirmView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final container:Landroid/widget/LinearLayout;

.field private final data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

.field private feedManager:Lru/rocketbank/core/manager/FeedManager;

.field private final headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final needToSelectCount:I

.field private selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;-><init>(Landroid/view/View;)V

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    const/4 v0, 0x3

    .line 41
    iput v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->needToSelectCount:I

    .line 50
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 51
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-result-object p1

    const-string v0, "DiscountsNotSelectedBinding.bind(v)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    .line 52
    new-instance p1, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "resources.getString(R.st\u2026ost_loved_time_to_choose)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    .line 53
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;)V

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;)V

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->merchantContainer:Landroid/widget/LinearLayout;

    const-string v0, "binding.merchantContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->container:Landroid/widget/LinearLayout;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "binding.headerText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "binding.selectionStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "binding.confirm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public static final synthetic access$getData$p(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;)Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    return-object p0
.end method

.method public static final synthetic access$onClickMerchant(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->onClickMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V

    return-void
.end method

.method private final addDiscount(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V
    .locals 10

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->container:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0c0121

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090254

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type de.hdodenhof.circleimageview.CircleImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v3, 0x7f090258

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902ac

    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v4, Landroid/widget/TextView;

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 81
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v4

    .line 82
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    .line 83
    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->itemView:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v3, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 88
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_5
    const v1, 0x7f090289

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f090252

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 92
    new-instance v1, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;

    invoke-direct {v1, p0, v5, v7, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;-><init>(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "clickView"

    .line 97
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "merchantRevealIconView"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v8

    const-string p1, "dsc.merchant"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    goto :goto_0

    :cond_6
    const-string v1, "clickView"

    .line 98
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "merchantRevealIconView"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v8

    const-string p1, "dsc.merchant"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 100
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final enterReveal(Landroid/view/View;)V
    .locals 6

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 194
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    .line 197
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    .line 198
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 199
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 200
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final isLimitReached()Z
    .locals 2

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->needToSelectCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final onClickMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 150
    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 151
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->updateTexts()V

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->isLimitReached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 154
    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 155
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->updateTexts()V

    :cond_1
    return-void
.end method

.method private final setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V
    .locals 2

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080206

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getItemColor(J)I

    move-result p4

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p5, :cond_1

    .line 169
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->enterReveal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 171
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V
    .locals 2

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080205

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_0
    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getItemColor(J)I

    move-result p4

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p5, :cond_1

    .line 182
    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->exitReveal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 183
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateTexts()V
    .locals 6

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const v2, 0x7f060095

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 238
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionTextVisibility()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void

    .line 239
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->isLimitReached()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionTextVisibility()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 242
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060207

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1102f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 247
    iget v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->needToSelectCount:I

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026ft_to_choose_ending_many)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026.left_to_choose_ending_2)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026.left_to_choose_ending_1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110254

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionStatus()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionTextVisibility()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const-string v1, "discount"

    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->addDiscount(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final exitReveal(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 216
    invoke-static {p1, v0, v1, v2, v3}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    .line 219
    new-instance v1, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$exitReveal$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$exitReveal$1;-><init>(Landroid/view/View;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 225
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method public final getItemColor(J)I
    .locals 1

    .line 263
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f06009f

    return p1

    :cond_0
    const p1, 0x7f060254

    return p1
.end method

.method public final onDiscountsSelect(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->selectedIds:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 126
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/manager/FeedManager;->sendMonthCashBack(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    .line 127
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 128
    new-instance v1, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;-><init>(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final updateImages()V
    .locals 7

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 108
    iget-object v4, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090199

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v4, Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_3

    .line 111
    iget-object v5, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->itemView:Landroid/view/View;

    const-string v6, "itemView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    .line 113
    invoke-virtual {v5, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 116
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
