.class Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;
.super Lrx/Subscriber;
.source "CheckCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/PlasticsCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->access$000(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lru/rocketbank/r2d2/activities/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->hideProgressDialog()V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->access$100(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/CheckCardEvent;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lru/rocketbank/core/events/CheckCardEvent;-><init>(Ljava/lang/Throwable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->onNext(Lru/rocketbank/core/network/model/PlasticsCheckResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/PlasticsCheckResponse;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->access$000(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lru/rocketbank/r2d2/activities/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->hideProgressDialog()V

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->access$100(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/CheckCardEvent;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lru/rocketbank/core/events/CheckCardEvent;-><init>(Lru/rocketbank/core/network/model/PlasticsCheckResponse;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
