.class public final Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CachingDiscountsAdapter.kt"

# interfaces
.implements Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;",
        ">;",
        "Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCachingDiscountsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachingDiscountsAdapter.kt\nru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1246#2:161\n1315#2,3:162\n1519#2,2:165\n*E\n*S KotlinDebug\n*F\n+ 1 CachingDiscountsAdapter.kt\nru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter\n*L\n117#1:161\n117#1,3:162\n118#1,2:165\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter$Companion;

.field private static final TYPE_CASHBACK_NOT_SELECTED:I = 0x3

.field private static final TYPE_CASHBACK_SELECTED:I = 0x2

.field private static final TYPE_DISCOUNT:I = 0x1

.field private static final TYPE_GAME:I = 0x4


# instance fields
.field private final cache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

.field private categoriesStartPosition:I

.field private final elements$delegate:Lkotlin/Lazy;

.field private final lastHolders$delegate:Lkotlin/Lazy;

.field private realSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "elements"

    const-string v4, "getElements()Landroid/util/SparseArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "lastHolders"

    const-string v4, "getLastHolders()Ljava/util/TreeMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->Companion:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->elements$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->lastHolders$delegate:Lkotlin/Lazy;

    .line 39
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDiscountCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->cache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->cache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->setListener(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;)V

    return-void
.end method

.method private final getElements()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->elements$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private final getLastHolders()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->lastHolders$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    return-object v0
.end method

.method private final inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(pare\u2026flate(res, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final update(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 10

    .line 95
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    .line 97
    iput v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    if-eqz p1, :cond_4

    .line 100
    iget-object v0, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->chosenMonthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x2

    .line 103
    iget-object v3, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->chosenMonthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    .line 101
    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 104
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x3

    .line 109
    iget-object v3, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    .line 107
    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 110
    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    .line 111
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->gamer:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    new-instance v2, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->gamer:Ljava/util/List;

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    :cond_2
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    const-string v0, "collection.categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    move-object v5, v1

    check-cast v5, Lru/rocketbank/core/model/discounts/Category;

    .line 117
    new-instance v1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_3
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 165
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    .line 118
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->realSize:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final updateItem(ILru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 152
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 156
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->getType()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const-string v1, "wrapper"

    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    .line 149
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getLastHolders()Ljava/util/TreeMap;

    move-result-object v0

    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCategoryAdded(Lru/rocketbank/core/model/discounts/Category;I)V
    .locals 10

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/2addr v1, p2

    new-instance v9, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, v9

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final onCategoryRemoved(Lru/rocketbank/core/model/discounts/Category;I)V
    .locals 8

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 76
    iget p1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->updateItem(ILru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0c00a6

    packed-switch p2, :pswitch_data_0

    .line 137
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Incorrect type of holder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 135
    :pswitch_0
    new-instance p2, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/GameHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    return-object p2

    .line 132
    :pswitch_1
    new-instance p2, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;

    const v0, 0x7f0c00a8

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    return-object p2

    .line 126
    :pswitch_2
    new-instance p2, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;

    const v0, 0x7f0c00a9

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/SelectedHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    return-object p2

    .line 129
    :pswitch_3
    new-instance p2, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/CategoryHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->cache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->setListener(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;)V

    .line 143
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getLastHolders()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final onDiscountAdded(Lru/rocketbank/core/model/discounts/Category;I)V
    .locals 8

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 61
    iget p1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->updateItem(ILru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    return-void
.end method

.method public final onDiscountRemoved(Lru/rocketbank/core/model/discounts/Category;I)V
    .locals 8

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 66
    iget p1, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->categoriesStartPosition:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->updateItem(ILru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    return-void
.end method

.method public final onDiscountsSelected(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V
    .locals 8

    const-string v0, "discounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->updateItem(ILru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final swap(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getElements()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->update(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->cache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->update(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    return-void
.end method

.method public final updatePictures()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->getLastHolders()Ljava/util/TreeMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;

    .line 90
    invoke-virtual {v1}, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->updateImages()V

    goto :goto_0

    :cond_0
    return-void
.end method
