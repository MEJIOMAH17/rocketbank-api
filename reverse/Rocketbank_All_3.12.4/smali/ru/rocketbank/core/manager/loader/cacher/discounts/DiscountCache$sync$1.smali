.class final Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;
.super Ljava/lang/Object;
.source "DiscountCache.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->sync(Lru/rocketbank/core/model/discounts/DiscountsCollection;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountCache.kt\nru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

.field final synthetic this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    iput-object p2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getListener()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->access$isDiscountsSelected$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    iget-object v0, v0, Lru/rocketbank/core/model/discounts/DiscountsCollection;->chosenMonthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->access$getHandler$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;-><init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->access$setDiscountsSelected$p(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Z)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getLastCollection()Lru/rocketbank/core/model/discounts/DiscountsCollection;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    const-string v2, "lastCollection!!.categories"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    iget-object v2, v2, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    const-string v3, "collection.categories"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->access$checkAddition(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Ljava/util/List;Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getLastCollection()Lru/rocketbank/core/model/discounts/DiscountsCollection;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    const-string v2, "lastCollection!!.categories"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    iget-object v2, v2, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    const-string v3, "collection.categories"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->access$checkDeletion(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Ljava/util/List;Ljava/util/List;)V

    .line 50
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->setLastCollection(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
