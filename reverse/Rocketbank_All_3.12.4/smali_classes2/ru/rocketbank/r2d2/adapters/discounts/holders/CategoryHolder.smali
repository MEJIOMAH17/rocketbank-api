.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;
.super Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
.source "CategoryHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryHolder.kt\nru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder\n*L\n1#1,88:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

.field private final container:Landroid/support/v7/widget/GridLayout;

.field private final data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;-><init>(Landroid/view/View;)V

    .line 23
    new-instance v0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    .line 28
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    move-result-object p1

    const-string v0, "DiscountsGridContainerBinding.bind(v)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;)V

    .line 30
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->binding:Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;->container:Landroid/support/v7/widget/GridLayout;

    const-string v0, "binding.container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/support/v7/widget/GridLayout;->setPadding(IIII)V

    return-void
.end method

.method private final addView(Lru/rocketbank/core/model/discounts/Discount;)V
    .locals 4

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00a4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "view"

    .line 54
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    return-void

    .line 58
    :cond_0
    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    move-result-object v1

    const-string v2, "categoryBinding"

    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->setDiscount(Lru/rocketbank/core/model/discounts/Discount;)V

    .line 60
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;)V

    .line 61
    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 64
    :try_start_0
    iget-object v0, p1, Lru/rocketbank/core/model/discounts/Discount;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, -0x777778

    .line 69
    :goto_0
    sget-object v2, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    .line 70
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->imageView:Landroid/support/v7/widget/AppCompatImageView;

    const-string v3, "categoryBinding.imageView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Discount;->prewiewLink:Ljava/lang/String;

    .line 72
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v2, v1, p1, v3}, Lru/rocketbank/core/utils/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    .line 38
    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getCategory()Lru/rocketbank/core/model/discounts/Category;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->data:Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/discounts/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->removeAllViews()V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/discounts/Category;->getDiscounts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/discounts/Discount;

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, v1, Lru/rocketbank/core/model/discounts/Discount;->prewiewLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->addView(Lru/rocketbank/core/model/discounts/Discount;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/discounts/Category;->getDiscounts()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->addView(Lru/rocketbank/core/model/discounts/Discount;)V

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final onDiscountClick(Landroid/view/View;Lru/rocketbank/core/model/discounts/Discount;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "v.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/discounts/Discount;)V

    return-void
.end method

.method public final updateImages()V
    .locals 5

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->container:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v2, Landroid/widget/ImageView;

    .line 80
    sget-object v3, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;->getImagesLinks()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lru/rocketbank/core/utils/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
