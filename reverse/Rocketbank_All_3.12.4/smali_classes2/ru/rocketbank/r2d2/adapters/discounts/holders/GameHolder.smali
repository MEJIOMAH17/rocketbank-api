.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;
.super Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
.source "GameHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameHolder.kt\nru/rocketbank/r2d2/adapters/discounts/holders/GameHolder\n*L\n1#1,77:1\n*E\n"
.end annotation


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

.field private final container:Landroid/support/v7/widget/GridLayout;

.field private data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

.field private maxDiscount:I

.field private transformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;-><init>(Landroid/view/View;)V

    .line 30
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->transformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.game_mode)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    .line 32
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    move-result-object p1

    const-string v0, "DiscountsGridContainerBinding.bind(v)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;)V

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->container:Landroid/support/v7/widget/GridLayout;

    const-string v0, "binding.container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    return-void
.end method

.method private final addView(Lru/rocketbank/core/model/discounts/Gamer;Z)V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00a5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 68
    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    move-result-object v1

    .line 69
    new-instance v2, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

    iget v3, p1, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    invoke-direct {v2, v3, p2}, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;-><init>(IZ)V

    const-string p2, "gameBinding"

    .line 70
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/GameItemData;)V

    .line 71
    iget-object p2, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->gameImage:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v1, "gameBinding.gameImage"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;->android:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->transformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-static {p2, p1, v1}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic addView$default(Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;Lru/rocketbank/core/model/discounts/Gamer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 65
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->addView(Lru/rocketbank/core/model/discounts/Gamer;Z)V

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->removeAllViews()V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getGames()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/discounts/Gamer;

    iget v1, v1, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    iput v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->maxDiscount:I

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/discounts/Gamer;

    .line 45
    iget v4, v2, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    iget v5, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->maxDiscount:I

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-direct {p0, v2, v3}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->addView(Lru/rocketbank/core/model/discounts/Gamer;Z)V

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v3

    iget-object v2, v2, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    iget-object v2, v2, Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;->android:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p1

    if-lez v1, :cond_2

    :goto_2
    const/4 p1, 0x2

    const/4 v2, 0x0

    .line 51
    invoke-static {p0, v2, v0, p1, v2}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->addView$default(Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;Lru/rocketbank/core/model/discounts/Gamer;ZILjava/lang/Object;)V

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public final updateImages()V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 60
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v2, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;->transformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-static {v2, v3, v4}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
