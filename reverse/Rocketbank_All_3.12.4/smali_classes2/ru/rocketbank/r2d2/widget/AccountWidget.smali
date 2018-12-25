.class public final Lru/rocketbank/r2d2/widget/AccountWidget;
.super Landroid/support/v4/view/ViewPager;
.source "AccountWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;,
        Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;,
        Lru/rocketbank/r2d2/widget/AccountWidget$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountWidget.kt\nru/rocketbank/r2d2/widget/AccountWidget\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n624#2:176\n713#2,2:177\n1246#2:179\n1315#2,3:180\n*E\n*S KotlinDebug\n*F\n+ 1 AccountWidget.kt\nru/rocketbank/r2d2/widget/AccountWidget\n*L\n75#1:176\n75#1,2:177\n75#1:179\n75#1,3:180\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widget/AccountWidget$Companion;

.field public static final ROCKET_FILTER:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/UserModel;",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountFrom:Lru/rocketbank/core/model/facade/Account;

.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation
.end field

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private currencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lru/rocketbank/core/model/enums/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private defaultFilter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/UserModel;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private fromAccountToken:Ljava/lang/String;

.field private final onAccountSelected:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation
.end field

.field private sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widget/AccountWidget;->Companion:Lru/rocketbank/r2d2/widget/AccountWidget$Companion;

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;->INSTANCE:Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lru/rocketbank/r2d2/widget/AccountWidget;->ROCKET_FILTER:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object p1

    const-string v0, "BehaviorSubject.create<Account>()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->onAccountSelected:Lrx/subjects/BehaviorSubject;

    .line 49
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 4029
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast p1, Ljava/util/Set;

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->currencies:Ljava/util/Set;

    .line 54
    new-instance p1, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;-><init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.create<Account>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->onAccountSelected:Lrx/subjects/BehaviorSubject;

    .line 49
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 5029
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast p1, Ljava/util/Set;

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->currencies:Ljava/util/Set;

    .line 54
    new-instance p1, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;-><init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->init()V

    return-void
.end method

.method public static final synthetic access$filterAccounts(Lru/rocketbank/r2d2/widget/AccountWidget;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->filterAccounts(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getAccountFrom$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/core/model/facade/Account;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    return-object p0
.end method

.method public static final synthetic access$getAccounts$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accounts:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getCurrencies$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Ljava/util/Set;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->currencies:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getDefaultFilter$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getFromAccountToken$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSourceAdapter$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez p0, :cond_0

    const-string v0, "sourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setAccountFrom$p(Lru/rocketbank/r2d2/widget/AccountWidget;Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    return-void
.end method

.method public static final synthetic access$setAccounts$p(Lru/rocketbank/r2d2/widget/AccountWidget;Ljava/util/List;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accounts:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setAuthorization$p(Lru/rocketbank/r2d2/widget/AccountWidget;Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$setCurrencies$p(Lru/rocketbank/r2d2/widget/AccountWidget;Ljava/util/Set;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->currencies:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setDefaultFilter$p(Lru/rocketbank/r2d2/widget/AccountWidget;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setFromAccountToken$p(Lru/rocketbank/r2d2/widget/AccountWidget;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSourceAdapter$p(Lru/rocketbank/r2d2/widget/AccountWidget;Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    return-void
.end method

.method private final filterAccounts(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez v0, :cond_0

    const-string v1, "sourceAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accounts:Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 177
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 180
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 181
    check-cast v2, Lru/rocketbank/core/model/facade/Account;

    .line 76
    invoke-virtual {v2}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 1037
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_3
    check-cast p1, Ljava/util/List;

    goto :goto_2

    .line 77
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 76
    :goto_2
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->setProducts(Ljava/util/List;)V

    .line 78
    invoke-direct {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->setDefaultSource()V

    :cond_5
    return-void
.end method

.method private final setDefaultSource()V
    .locals 3

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->setCurrentItem(I)V

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez v1, :cond_0

    const-string v2, "sourceAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getToken(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez v1, :cond_2

    const-string v2, "sourceAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->findItem(Ljava/lang/String;)I

    move-result v0

    .line 89
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->setCurrentItem(I)V

    .line 90
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez v1, :cond_3

    const-string v2, "sourceAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getToken(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    .line 93
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->fromAccountToken:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->onAccountSelected:Lrx/subjects/BehaviorSubject;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3029
    sget-object p2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast p2, Ljava/util/Set;

    .line 121
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 98
    iget-object p2, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2029
    sget-object p3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast p3, Ljava/util/Set;

    .line 98
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOnAccountSelected()Lrx/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/BehaviorSubject<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->onAccountSelected:Lrx/subjects/BehaviorSubject;

    return-object v0
.end method

.method public final highlightAmount(I)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.widget.AccountWidget.AccountPagerAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getCurrentFragment()Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->highlightAmount(I)V

    return-void

    :cond_1
    return-void
.end method

.method public final init()V
    .locals 2

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widget/AccountWidget$init$1;-><init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final setup(Landroid/support/v4/app/FragmentManager;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;ILjava/lang/Object;)V

    return-void
.end method

.method public final setup(Landroid/support/v4/app/FragmentManager;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/Set<",
            "+",
            "Lru/rocketbank/core/model/enums/Currency;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currencies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0, p2}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;)V

    return-void
.end method

.method public final setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/UserModel;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;ILjava/lang/Object;)V

    return-void
.end method

.method public final setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/UserModel;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/Set<",
            "+",
            "Lru/rocketbank/core/model/enums/Currency;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez p1, :cond_0

    const-string v0, "sourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iput-object p2, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->defaultFilter:Lkotlin/jvm/functions/Function1;

    .line 103
    iput-object p3, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->currencies:Ljava/util/Set;

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->filterAccounts(Lkotlin/jvm/functions/Function1;)V

    .line 106
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->onAccountSelected:Lrx/subjects/BehaviorSubject;

    iget-object p2, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p1, p2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xe

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, p1, p2}, Lru/rocketbank/r2d2/widget/AccountWidget;->setPadding(IIII)V

    .line 110
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->setPageMargin(I)V

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget;->sourceAdapter:Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    if-nez p1, :cond_2

    const-string p2, "sourceAdapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getOnSetPrimaryItem()Lrx/subjects/PublishSubject;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;-><init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/subjects/PublishSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
