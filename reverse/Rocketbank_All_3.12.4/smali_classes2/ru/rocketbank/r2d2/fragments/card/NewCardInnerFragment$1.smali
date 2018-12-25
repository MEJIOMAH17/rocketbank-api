.class Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;
.super Lrx/Subscriber;
.source "NewCardInnerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/AccountsCurrency;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$000(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$100(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Lru/rocketbank/core/model/AccountsCurrency;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->onNext(Lru/rocketbank/core/model/AccountsCurrency;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/AccountsCurrency;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountsCurrency;->getResponse()Lru/rocketbank/core/model/ResponseModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u0417\u0430\u044f\u0432\u043a\u0430 \u043f\u043e\u0434\u0430\u043d\u0430"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$000(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$000(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountsCurrency;->getResponse()Lru/rocketbank/core/model/ResponseModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ResponseModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$200(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;Ljava/lang/String;)V

    return-void
.end method
