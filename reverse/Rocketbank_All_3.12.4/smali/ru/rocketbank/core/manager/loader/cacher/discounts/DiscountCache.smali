.class public final Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;
.super Ljava/lang/Object;
.source "DiscountCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountCache.kt\nru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1519#2,2:142\n1519#2,2:144\n*E\n*S KotlinDebug\n*F\n+ 1 DiscountCache.kt\nru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache\n*L\n61#1,2:142\n92#1,2:144\n*E\n"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isDiscountsSelected:Z

.field private isEmpty:Z

.field private lastCollection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

.field private listener:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$checkAddition(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->checkAddition(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$checkDeletion(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->checkDeletion(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$isDiscountsSelected$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->isDiscountsSelected:Z

    return p0
.end method

.method public static final synthetic access$setDiscountsSelected$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->isDiscountsSelected:Z

    return-void
.end method

.method private final checkAddition(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Category;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Category;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    check-cast p1, Ljava/lang/Iterable;

    .line 142
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/discounts/Category;

    .line 62
    invoke-virtual {v1}, Lru/rocketbank/core/model/discounts/Category;->getDiscounts()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 68
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/discounts/Category;

    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lru/rocketbank/core/model/discounts/Category;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 71
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    new-instance v4, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkAddition$2;

    invoke-direct {v4, p0, p1, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkAddition$2;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 76
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lru/rocketbank/core/model/discounts/Category;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/discounts/Discount;

    .line 78
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 79
    iget-object p2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    new-instance v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkAddition$3;

    invoke-direct {v0, p0, p1, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkAddition$3;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_2
    if-eq v1, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final checkDeletion(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Category;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Category;",
            ">;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 92
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/discounts/Category;

    .line 93
    invoke-virtual {v3}, Lru/rocketbank/core/model/discounts/Category;->getDiscounts()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 97
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/discounts/Category;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lru/rocketbank/core/model/discounts/Category;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 100
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    new-instance v4, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$2;

    invoke-direct {v4, p0, v1, v2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$2;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 104
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lru/rocketbank/core/model/discounts/Category;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/discounts/Discount;

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 107
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->handler:Landroid/os/Handler;

    new-instance p2, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;

    invoke-direct {p2, p0, v1, v2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_2
    if-eq v2, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final getLastCollection()Lru/rocketbank/core/model/discounts/DiscountsCollection;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->lastCollection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    return-object v0
.end method

.method public final getListener()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->listener:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->lastCollection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setEmpty(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->isEmpty:Z

    return-void
.end method

.method public final setLastCollection(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->lastCollection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    return-void
.end method

.method public final setListener(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->listener:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    return-void
.end method

.method public final sync(Lru/rocketbank/core/model/discounts/DiscountsCollection;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/discounts/DiscountsCollection;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create({ subs\u2026\n            }\n        })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final update(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->sync(Lru/rocketbank/core/model/discounts/DiscountsCollection;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 121
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 122
    new-instance v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    :cond_0
    return-void
.end method
