.class final Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DiscountCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;

    iget-object v0, v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getListener()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;

    iget-object v1, v1, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$sync$1;->$collection:Lru/rocketbank/core/model/discounts/DiscountsCollection;

    iget-object v1, v1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->chosenMonthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    const-string v2, "collection.chosenMonthCashBack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;->onDiscountsSelected(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V

    return-void

    :cond_0
    return-void
.end method
