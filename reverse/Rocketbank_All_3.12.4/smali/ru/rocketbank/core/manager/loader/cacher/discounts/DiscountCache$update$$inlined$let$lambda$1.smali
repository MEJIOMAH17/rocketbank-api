.class public final Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;
.super Lrx/Subscriber;
.source "DiscountCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->update(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    .line 122
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getListener()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;->onError(Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;->unsubscribe()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$update$$inlined$let$lambda$1;->unsubscribe()V

    return-void
.end method
