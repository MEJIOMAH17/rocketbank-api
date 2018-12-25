.class Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "EnterPinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/EnterPinFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

.field final synthetic val$textViewErrors:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 105
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$000(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$102(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$002(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Z)Z

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$200(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;)V

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$100(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041a\u043e\u0434 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$300(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;)V

    return-void

    .line 123
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->showSpinner()V

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$500(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$600(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$100(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lru/rocketbank/core/network/api/PlasticsApi;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 126
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1$1;-><init>(Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;)V

    .line 127
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 125
    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$402(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Lrx/Subscription;)Lrx/Subscription;

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$102(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->access$002(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Z)Z

    return-void
.end method
