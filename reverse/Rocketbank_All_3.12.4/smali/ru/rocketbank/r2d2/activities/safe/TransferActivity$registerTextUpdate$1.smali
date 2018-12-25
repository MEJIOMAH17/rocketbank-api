.class final Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;
.super Ljava/lang/Object;
.source "TransferActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;->registerTextUpdate()V
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
        "Lru/rocketbank/core/network/model/MoveMoneyBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;->call(Lru/rocketbank/core/network/model/MoveMoneyBody;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/MoveMoneyBody;)V
    .locals 3

    .line 498
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    sget-object v1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 500
    sget-object v2, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$2;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$2;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 498
    invoke-virtual {v0, p1, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->sendMoneyDescription(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
