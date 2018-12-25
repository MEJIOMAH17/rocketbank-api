.class public final Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "ChangeCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lru/rocketbank/core/widgets/RocketTextView;",
            ")V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method

.method private final code()V
    .locals 4

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->showProgressDialog()V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getPlastic_check_id$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getCodeObservable(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$code$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$code$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setCodeSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lrx/Subscription;)V

    return-void
.end method

.method private final pin()V
    .locals 6

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->showProgressDialog()V

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    .line 193
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$isActivation$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z

    move-result v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getPlastic_check_id$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v4}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v5}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getPlasticToken$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getPinObservable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 194
    new-instance v2, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setPinSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lrx/Subscription;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$isFirst$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setFirst$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$init(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewErrors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f1100ca

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$reset(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V

    return-void

    .line 125
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$isCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->code()V

    goto :goto_0

    .line 128
    :cond_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->pin()V

    .line 131
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$setFirst$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V

    return-void
.end method
