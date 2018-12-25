.class Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;
.super Lrx/Subscriber;
.source "ChangeCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/ResetShortCodeRespone;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ChangeCodeActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

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

    .line 138
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->hideProgressDialog()V

    .line 139
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    const v0, 0x7f1103d2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 140
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    const-class v1, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lru/rocketbank/core/model/ResetShortCodeRespone;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->onNext(Lru/rocketbank/core/model/ResetShortCodeRespone;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/ResetShortCodeRespone;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->hideProgressDialog()V

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone;->getResetShortCode()Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone;->getResetShortCode()Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->access$000(Lru/rocketbank/r2d2/activities/ChangeCodeActivity;Lru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone;->getResponseData()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/model/ResetShortCodeRespone;->getResponseData()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 151
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;->this$0:Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    const v1, 0x7f1103d2

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
