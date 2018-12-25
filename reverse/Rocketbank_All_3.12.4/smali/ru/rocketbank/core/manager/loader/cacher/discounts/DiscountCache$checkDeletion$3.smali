.class final Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;
.super Ljava/lang/Object;
.source "DiscountCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->checkDeletion(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentCategory:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $i:I

.field final synthetic this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    iput-object p2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->$currentCategory:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->this$0:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getListener()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->$currentCategory:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/discounts/Category;

    iget v2, p0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache$checkDeletion$3;->$i:I

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;->onDiscountRemoved(Lru/rocketbank/core/model/discounts/Category;I)V

    return-void
.end method
