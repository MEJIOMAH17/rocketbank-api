.class public final Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "RemittanceLoaderTransferFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final REMITTANCE_OUTGOING_EXTRA:Ljava/lang/String; = "remittance_outgoing"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "RemittanceTransferLoader"

.field private static final TAG_RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final TAG_RESULT_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private btnNext:Landroid/widget/Button;

.field private error:Ljava/lang/String;

.field public finishButton:Landroid/view/View;

.field public message:Landroid/widget/TextView;

.field private remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

.field private result:Ljava/lang/String;

.field public rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field public rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

.field private rootView:Landroid/view/View;

.field private subscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$onReady(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->onReady()V

    return-void
.end method

.method public static final synthetic access$onRetry(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->onRetry()V

    return-void
.end method

.method public static final synthetic access$setUIFailed(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->setUIFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setUISuccess(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->setUISuccess()V

    return-void
.end method

.method private final onReady()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 193
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final onRetry()V
    .locals 3

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v2, "message"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v2, "finishButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_3

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 186
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->sendMoney()V

    return-void
.end method

.method private final sendMoney()V
    .locals 3

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_1

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {v1, v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;-><init>(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->remittanceCreate(Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;)Lrx/Observable;

    move-result-object v0

    .line 136
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 147
    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$sendMoney$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V

    check-cast v2, Lrx/functions/Action1;

    .line 137
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->subscription:Lrx/Subscription;

    return-void
.end method

.method private final setUIFailed(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const p1, 0x7f11018d

    .line 116
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.error_occur)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string v0, "failed"

    .line 118
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->error:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_1

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, "\u0417\u0410\u041a\u0420\u042b\u0422\u042c"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v2, "message"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string v0, "message"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    if-nez p1, :cond_6

    const-string v0, "finishButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    if-nez p1, :cond_7

    const-string v0, "finishButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$setUIFailed$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$setUIFailed$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setUISuccess()V
    .locals 3

    const-string v0, "success"

    .line 107
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_0

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "\u0413\u041e\u0422\u041e\u0412\u041e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v2, "message"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v2, "\u0414\u0435\u043d\u044c\u0433\u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u044b"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v2, "message"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getFinishButton()Landroid/view/View;
    .locals 2

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "finishButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMessage()Landroid/widget/TextView;
    .locals 2

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "message"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketLoader()Lru/rocketbank/core/widgets/RocketLoader;
    .locals 2

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_0

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0c00ee

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090225

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketLoader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    const p2, 0x7f09017b

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "rootView.findViewById(R.id.finishButton)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    const p2, 0x7f09025e

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const v0, 0x7f09008a

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    .line 74
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    if-nez p2, :cond_5

    const-string v1, "message"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v0, "remittance_outgoing"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    if-eqz p3, :cond_8

    const-string p2, "result"

    .line 78
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "result"

    .line 79
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    :cond_8
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_0

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->unsubscribe(Lrx/Subscription;)V

    .line 168
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "result"

    .line 174
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "error"

    .line 177
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->error:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->btnNext:Landroid/widget/Button;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->result:Ljava/lang/String;

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->setUISuccess()V

    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    const-string v0, "error"

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "error"

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_3
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->setUIFailed(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_4
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->sendMoney()V

    return-void
.end method

.method public final setFinishButton(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->finishButton:Landroid/view/View;

    return-void
.end method

.method public final setMessage(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->message:Landroid/widget/TextView;

    return-void
.end method

.method public final setRocketAPI(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public final setRocketLoader(Lru/rocketbank/core/widgets/RocketLoader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    return-void
.end method
