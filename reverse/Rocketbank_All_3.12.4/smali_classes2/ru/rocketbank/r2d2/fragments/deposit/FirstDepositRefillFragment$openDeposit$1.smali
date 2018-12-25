.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;
.super Lrx/Subscriber;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openDeposit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/DepositOpenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

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

    .line 277
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    .line 278
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDepositSubscription$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 271
    check-cast p1, Lru/rocketbank/core/network/model/DepositOpenResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->onNext(Lru/rocketbank/core/network/model/DepositOpenResult;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/DepositOpenResult;)V
    .locals 2

    const-string v0, "depositOpenResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lru/rocketbank/core/utils/SoundNotification;->playSoundNotification(I)V

    .line 285
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    .line 287
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/DepositOpenResult;->getDeposit()Lru/rocketbank/core/model/DepositModel;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 291
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 293
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 294
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->onBackPressed()V

    .line 295
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showDeposit(Lru/rocketbank/core/model/DepositModel;)V

    .line 296
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDepositSubscription$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
