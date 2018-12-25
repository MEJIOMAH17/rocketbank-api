.class public final Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;
.super Lrx/Subscriber;
.source "OperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchHideProgress()V

    .line 121
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->setOperationFetched(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$setCompensationSubsriotion$p(Lru/rocketbank/r2d2/root/operation/OperationPresenter;Lrx/Subscription;)V

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$refreshData(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->requestOperationDetail()V

    .line 127
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110108

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$setCompensationSubsriotion$p(Lru/rocketbank/r2d2/root/operation/OperationPresenter;Lrx/Subscription;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->onNext(Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;)V
    .locals 1

    const-string v0, "milesCompensationResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lru/rocketbank/core/utils/SoundNotification;->playSoundNotification(I)V

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchHideProgress()V

    .line 136
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchUpdate()V

    .line 139
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->refresh()V

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->setOperationFetched(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$setCompensationSubsriotion$p(Lru/rocketbank/r2d2/root/operation/OperationPresenter;Lrx/Subscription;)V

    .line 144
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$refreshData(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->requestOperationDetail()V

    return-void
.end method
