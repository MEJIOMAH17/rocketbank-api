.class Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "EnterPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

.field final synthetic val$textViewErrors:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 128
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$000(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$102(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$002(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Z)Z

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$200(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$100(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041a\u043e\u0434 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$300(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V

    return-void

    .line 146
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$400(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V

    .line 148
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$800(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$100(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/PlasticsApi;->changeShortCode(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 149
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;-><init>(Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;)V

    .line 150
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$502(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Lrx/Subscription;)Lrx/Subscription;

    .line 198
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$102(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$002(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Z)Z

    return-void
.end method
