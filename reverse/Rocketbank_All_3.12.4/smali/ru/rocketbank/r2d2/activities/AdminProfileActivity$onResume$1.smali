.class public final Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;
.super Lrx/Subscriber;
.source "AdminProfileActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/AgentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

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

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u044b\u0435"

    .line 124
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 123
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Lru/rocketbank/core/network/model/AgentResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;->onNext(Lru/rocketbank/core/network/model/AgentResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/AgentResponse;)V
    .locals 1

    const-string v0, "agentResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$showAgent(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Lru/rocketbank/core/network/model/AgentResponse;)V

    return-void
.end method
