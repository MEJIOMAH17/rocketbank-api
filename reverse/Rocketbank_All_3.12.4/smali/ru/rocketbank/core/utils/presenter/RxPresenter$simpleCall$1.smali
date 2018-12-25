.class final Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/RxPresenter;->simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $factory:Lkotlin/jvm/functions/Function0;

.field final synthetic $instanceId:I

.field final synthetic $onError:Lkotlin/jvm/functions/Function2;

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Lru/rocketbank/core/utils/presenter/RxPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/presenter/RxPresenter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->this$0:Lru/rocketbank/core/utils/presenter/RxPresenter;

    iput-object p2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$onError:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$factory:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$instanceId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->invoke()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Subscription;
    .locals 4

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->this$0:Lru/rocketbank/core/utils/presenter/RxPresenter;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$onError:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$factory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->this$0:Lru/rocketbank/core/utils/presenter/RxPresenter;

    iget v3, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;->$instanceId:I

    invoke-virtual {v2, v3}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverSimple(I)Lru/rocketbank/core/utils/presenter/DeliverSimple;

    move-result-object v2

    check-cast v2, Lrx/Observable$Transformer;

    invoke-virtual {v1, v2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    const-string v1, "factory().compose(delive\u2026).subscribe(subscription)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
