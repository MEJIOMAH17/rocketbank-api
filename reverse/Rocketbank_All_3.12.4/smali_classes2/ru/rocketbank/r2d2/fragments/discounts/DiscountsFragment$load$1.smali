.class public final Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;
.super Lrx/Subscriber;
.source "DiscountsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->load(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/discounts/DiscountsCollection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountsFragment.kt\nru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1\n*L\n1#1,152:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isSwipe:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->$isSwipe:Z

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

    .line 124
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->$isSwipe:Z

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)V

    return-void

    .line 126
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$getSwipeRefresh$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->onNext(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V
    .locals 1

    const-string v0, "discountsCollection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->categories:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$getDiscountAdapter$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->swap(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    .line 135
    :cond_0
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/DiscountsCollection;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    if-eqz p1, :cond_1

    .line 136
    sget-object p1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lru/rocketbank/core/utils/SoundNotification;->playSoundNotification(I)V

    .line 138
    :cond_1
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->$isSwipe:Z

    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)V

    return-void

    .line 141
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$getDiscountAdapter$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->updatePictures()V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;->this$0:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->access$getSwipeRefresh$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
