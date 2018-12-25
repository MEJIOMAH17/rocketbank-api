.class final Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;
.super Ljava/lang/Object;
.source "ChargeNotificationActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->patchProfile()V
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
        "Lru/rocketbank/core/network/model/PatchProfileAResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lru/rocketbank/core/network/model/PatchProfileAResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->call(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->hideProgressDialog()V

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->finish()V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PatchProfileAResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->access$getAuthorization$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->access$getAuthorization$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
