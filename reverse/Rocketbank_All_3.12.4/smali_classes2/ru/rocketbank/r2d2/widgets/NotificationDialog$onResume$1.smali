.class public final Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;
.super Lrx/Subscriber;
.source "NotificationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/NotificationDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/NotificationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

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

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->onNext(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$setUserModel(Lru/rocketbank/r2d2/widgets/NotificationDialog;Lru/rocketbank/core/model/UserModel;)V

    .line 107
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$getAccount$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$getAccount$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/TariffModel;->getOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/OptionModel;->isActive()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$setActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$isActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z

    move-result v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$setCheckedIsActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setupNotifications()V

    return-void

    .line 112
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->dismiss()V

    return-void
.end method
