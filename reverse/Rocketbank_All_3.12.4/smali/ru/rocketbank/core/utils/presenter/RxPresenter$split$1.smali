.class final Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;
.super Ljava/lang/Object;
.source "RxPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;
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
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/utils/presenter/Delivery<",
        "TZ;TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/jvm/functions/Function2;

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;->$onError:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/core/utils/presenter/Delivery;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;->call(Lru/rocketbank/core/utils/presenter/Delivery;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/utils/presenter/Delivery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TZ;TT;>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;->$onError:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/utils/presenter/Delivery;->handle(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
