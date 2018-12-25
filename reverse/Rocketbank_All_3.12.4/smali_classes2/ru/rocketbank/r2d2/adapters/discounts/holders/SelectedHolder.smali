.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;
.super Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
.source "SelectedHolder.kt"


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;-><init>(Landroid/view/View;)V

    .line 14
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    return-void
.end method

.method private final loadImages()V
    .locals 5

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPicture:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v1, "binding.discountSelect1!!.discountPicture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    new-instance v2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPicture:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v1, "binding.discountSelect2!!.discountPicture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    new-instance v2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPicture:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v1, "binding.discountSelect3!!.discountPicture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    new-instance v2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    const-string v1, "binding"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setList(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "data.monthCashback.monthlyMerchants[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "data.monthCashback.monthlyMerchants[1]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "data.monthCashback.monthlyMerchants[2]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->loadImages()V

    return-void
.end method

.method public final updateImages()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;->loadImages()V

    return-void
.end method
