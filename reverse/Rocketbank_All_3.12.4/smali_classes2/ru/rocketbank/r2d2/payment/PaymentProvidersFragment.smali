.class public final Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "PaymentProvidersFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentProvidersFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentProvidersFragment.kt\nru/rocketbank/r2d2/payment/PaymentProvidersFragment\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,197:1\n49#2,2:198\n49#2,2:200\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentProvidersFragment.kt\nru/rocketbank/r2d2/payment/PaymentProvidersFragment\n*L\n141#1,2:198\n142#1,2:200\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$Companion;

.field private static final KEY_SEARCH_QUERY:Ljava/lang/String; = "KEY_SEARCH_QUERY"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

.field public nothingFoundTextView:Landroid/widget/TextView;

.field public nothingFoundView:Landroid/view/View;

.field private paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

.field public progressBar:Landroid/widget/ProgressBar;

.field private providers:Lru/rocketbank/core/network/model/ProvidersResponse;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private searchQuery:Ljava/lang/String;

.field private searchSubscription:Lrx/Subscription;

.field private searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->Companion:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProviders$p(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)Lru/rocketbank/core/network/model/ProvidersResponse;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->providers:Lru/rocketbank/core/network/model/ProvidersResponse;

    return-object p0
.end method

.method public static final synthetic access$setProviders$p(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->providers:Lru/rocketbank/core/network/model/ProvidersResponse;

    return-void
.end method

.method private final subscribeSearchView()V
    .locals 3

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v0}, Lcom/jakewharton/rxbinding/support/v7/widget/RxSearchView;->queryTextChanges(Landroid/support/v7/widget/SearchView;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    .line 166
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 167
    sget-object v1, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$1;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    new-instance v2, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$sam$rx_functions_Func1$0;

    invoke-direct {v2, v1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$sam$rx_functions_Func1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, v2

    :cond_1
    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 168
    sget-object v1, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 169
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;-><init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 170
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;-><init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchSubscription:Lrx/Subscription;

    :cond_2
    return-void
.end method

.method private final updateSections(Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 7

    .line 117
    invoke-static {p1}, Lru/rocketbank/core/network/model/ProvidersResponse;->mapProviderResponse(Lru/rocketbank/core/network/model/ProvidersResponse;)Ljava/util/Map;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->setProviders(Ljava/util/Map;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_2

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string v0, "nothingFoundView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_4

    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_0

    :cond_6
    move p1, v2

    :goto_0
    if-nez p1, :cond_8

    const p1, 0x7f110327

    .line 124
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "searchFailedString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const-string v1, "nothingFoundTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 128
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    if-nez p1, :cond_9

    const-string v0, "nothingFoundTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    const v0, 0x7f110181

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 132
    :cond_a
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_b

    const-string v3, "progressBar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    if-nez v0, :cond_c

    const-string v3, "nothingFoundView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_d

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    new-instance v5, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v5, v3, v6}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2

    :cond_e
    move v4, v2

    :goto_2
    add-int/2addr v3, v4

    goto :goto_1

    .line 141
    :cond_f
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    if-nez p1, :cond_10

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    check-cast v0, Ljava/util/Collection;

    .line 199
    new-array v1, v2, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    check-cast v1, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    .line 141
    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    if-nez p1, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 201
    :cond_12
    new-array v1, v2, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    check-cast v0, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    .line 142
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    if-nez p1, :cond_14

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final filter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->providers:Lru/rocketbank/core/network/model/ProvidersResponse;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/model/ProvidersResponse;->filter(Ljava/lang/String;)Lru/rocketbank/core/network/model/ProvidersResponse;

    move-result-object p1

    const-string v0, "filtered"

    .line 178
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->updateSections(Lru/rocketbank/core/network/model/ProvidersResponse;)V

    return-void
.end method

.method public final getAdapter()Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;
    .locals 2

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getNothingFoundTextView()Landroid/widget/TextView;
    .locals 2

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "nothingFoundTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getNothingFoundView()Landroid/view/View;
    .locals 2

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "nothingFoundView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onBackPressed()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0012

    .line 148
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f09030a

    .line 150
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.SearchView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 154
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->subscribeSearchView()V

    .line 156
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    if-nez p1, :cond_5

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 158
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    :cond_5
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c0190

    .line 44
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ce

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0902ba

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f09027e

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    const p2, 0x7f09027f

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const-string p2, "KEY_SEARCH_QUERY"

    .line 52
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchQuery:Ljava/lang/String;

    .line 55
    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez p2, :cond_5

    const-string p3, "progressBar"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 102
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ProvidersResponse;->getProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->providers:Lru/rocketbank/core/network/model/ProvidersResponse;

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->providers:Lru/rocketbank/core/network/model/ProvidersResponse;

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.network.model.ProvidersResponse"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->updateSections(Lru/rocketbank/core/network/model/ProvidersResponse;)V

    .line 110
    invoke-static {}, Lru/rocketbank/r2d2/helpers/UIHelper;->supportsViewElevation()Z

    move-result p1

    if-nez p1, :cond_5

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_2

    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lru/rocketbank/core/widgets/ItemShadowDecorator;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const v2, 0x7f0801b7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.NinePatchDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/ItemShadowDecorator;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_5
    return-void

    .line 103
    :cond_6
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_7

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    if-nez p1, :cond_8

    const-string v1, "nothingFoundView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_9

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    if-nez p1, :cond_a

    const-string v0, "nothingFoundTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const v0, 0x7f110181

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->unsubscribe(Lrx/Subscription;)V

    .line 183
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 62
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->subscribeSearchView()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_1

    const-string v0, "KEY_SEARCH_QUERY"

    .line 189
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance p1, Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V

    check-cast v0, Lrx/functions/Action2;

    invoke-direct {p1, p2, v0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;-><init>(Landroid/content/Context;Lrx/functions/Action2;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    .line 81
    new-instance p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->paymentProvidersListAdapter:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p1, p2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    .line 83
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object p1

    .line 84
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p2, :cond_2

    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_3

    .line 87
    invoke-virtual {p1}, Lru/rocketbank/core/manager/DataManager;->loadProviders()V

    .line 89
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_4

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    if-nez p2, :cond_5

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setAdapter(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    return-void
.end method

.method public final setNothingFoundTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setNothingFoundView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->nothingFoundView:Landroid/view/View;

    return-void
.end method

.method public final setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
