.class final Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CodePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->requestCode(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrx/Observable<",
        "Lru/rocketbank/core/model/card/Card2CardStatusResponseData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $id:I

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    iput p2, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;->$id:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;->invoke()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/card/Card2CardStatusResponseData;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/CodePresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/c2c/CodePresenter;->access$getCard2CardApi$p(Lru/rocketbank/r2d2/activities/c2c/CodePresenter;)Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/activities/c2c/CodePresenter$requestCode$1;->$id:I

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/Card2CardApi;->status(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "card2CardApi.status(id).\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
