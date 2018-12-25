.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;
.super Lrx/Subscriber;
.source "NonSelectedHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->onDiscountsSelect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $v:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;

    invoke-static {p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->access$getData$p(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;)Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->unsubscribe()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lru/rocketbank/core/model/Empty;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->onNext(Lru/rocketbank/core/model/Empty;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/Empty;)V
    .locals 1

    const-string v0, "empty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/discounts/DiscountUpdateEvent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountUpdateEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$onDiscountsSelect$1;->unsubscribe()V

    return-void
.end method
