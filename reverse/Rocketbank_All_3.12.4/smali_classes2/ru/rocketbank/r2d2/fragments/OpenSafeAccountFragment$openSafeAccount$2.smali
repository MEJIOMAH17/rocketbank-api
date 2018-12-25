.class public final Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;
.super Lrx/Subscriber;
.source "OpenSafeAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->openSafeAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/OpenSafeAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

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

    const-string v0, "SAFE_ACCOUNT"

    const-string v1, "Not able to create account"

    .line 116
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    const v0, 0x7f110320

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$showAlert(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;I)V

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$hideProgress(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Lru/rocketbank/core/network/model/OpenSafeAccountResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->onNext(Lru/rocketbank/core/network/model/OpenSafeAccountResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/OpenSafeAccountResponse;)V
    .locals 1

    const-string v0, "openSafeAccountResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$hideProgress(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V

    .line 124
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/OpenSafeAccountResponse;->getAccount()Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-nez p1, :cond_2

    .line 129
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showSafe(Ljava/lang/String;)V

    return-void
.end method
