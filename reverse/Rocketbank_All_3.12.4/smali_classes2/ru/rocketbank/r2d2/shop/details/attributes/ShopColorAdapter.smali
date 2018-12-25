.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopColorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopColorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopColorAdapter.kt\nru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,60:1\n27#2,3:61\n27#2,3:64\n*E\n*S KotlinDebug\n*F\n+ 1 ShopColorAdapter.kt\nru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter\n*L\n21#1,3:61\n28#1,3:64\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final colors$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final onCheckChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/Color;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedColor$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "selectedColor"

    const-string v4, "getSelectedColor()Lru/rocketbank/core/model/shop/Color;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "colors"

    const-string v4, "getColors()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/Color;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCheckChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    .line 21
    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 61
    new-instance p2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;Ljava/util/List;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 63
    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->selectedColor$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 28
    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 64
    new-instance p2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;

    invoke-direct {p2, p1, p1, p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 66
    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->colors$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getOnCheckChanged$p(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$selectItem(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->selectItem(I)V

    return-void
.end method

.method private final selectItem(I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->setSelectedColor(Lru/rocketbank/core/model/shop/Color;)V

    return-void
.end method


# virtual methods
.method public final getColors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->colors$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSelectedColor()Lru/rocketbank/core/model/shop/Color;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->selectedColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/shop/Color;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getSelectedColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;-><init>(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;I)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, v2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->bind(Lru/rocketbank/core/model/shop/Color;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 42
    new-instance v0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    move-result-object p1

    const-string p2, "RadioButtonColorBinding.\u2026tInflater, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;)V

    return-object v0
.end method

.method public final setColors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->colors$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelectedColor(Lru/rocketbank/core/model/shop/Color;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->selectedColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
