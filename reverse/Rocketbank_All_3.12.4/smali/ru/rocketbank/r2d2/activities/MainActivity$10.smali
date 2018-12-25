.class Lru/rocketbank/r2d2/activities/MainActivity$10;
.super Lrx/Subscriber;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->doJointRequest(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$10;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$10;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->access$900(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$10;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->access$900(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$10;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->access$900(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 493
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity$10;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 513
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$10;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/MainActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
