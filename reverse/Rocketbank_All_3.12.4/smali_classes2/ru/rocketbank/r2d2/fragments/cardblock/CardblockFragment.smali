.class public Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;
.super Lru/rocketbank/r2d2/fragments/BaseFragment;
.source "CardblockFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;
.implements Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;


# static fields
.field private static final BLOCK_REASON:Ljava/lang/String; = "BLOCK_REASON"

.field private static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

.field private blockSubscription:Lrx/Subscription;

.field private isBlock:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private reason:Lru/rocketbank/core/model/enums/BlockReason;

.field private token:Ljava/lang/String;

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private userModelSubscription:Lrx/Subscription;

.field private widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

.field private widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/AccountModel;
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setCardBlocked()V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->hideProgress()V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->error()V

    return-void
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->moveToUnblockScreen()V

    return-void
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setCardUnblocked()V

    return-void
.end method

.method static synthetic access$902(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private error()V
    .locals 1

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c, \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0435\u0449\u0451 \u0440\u0430\u0437"

    .line 401
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->error(Ljava/lang/String;)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    .line 405
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getAccount()Lru/rocketbank/core/model/AccountModel;
    .locals 2

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccountOrLocked()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    return-object v0
.end method

.method private hideProgress()V
    .locals 1

    .line 410
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private moveToBlockScreen()V
    .locals 4

    .line 303
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setAlpha(F)V

    .line 306
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 309
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 311
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 313
    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$5;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private moveToUnblockScreen()V
    .locals 4

    .line 262
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 268
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 270
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 272
    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static newCardblockFragment(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;
    .locals 3

    .line 62
    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TOKEN"

    .line 65
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newCardblockFragment(Lru/rocketbank/core/model/enums/BlockReason;)Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;
    .locals 3

    .line 72
    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "BLOCK_REASON"

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/BlockReason;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setCardBlocked()V
    .locals 2

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setVisibility(I)V

    return-void
.end method

.method private setCardUnblocked()V
    .locals 2

    .line 202
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setVisibility(I)V

    return-void
.end method

.method private setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private showProgressExecution()V
    .locals 3

    .line 417
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 418
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 420
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$6;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 426
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBlockRequest()V
    .locals 3

    .line 211
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->showProgressExecution()V

    .line 217
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lru/rocketbank/core/network/api/AccountApi;->blockCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 218
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    .line 219
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->blockSubscription:Lrx/Subscription;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    .line 109
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 115
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    invoke-virtual {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setOnBlockRequestListener(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;)V

    .line 117
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    .line 118
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const p2, 0x7f090420

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 121
    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    invoke-virtual {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setOnUnblockRequestListener(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;)V

    .line 132
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "is_block"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->isBlock:Z

    .line 134
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "TOKEN"

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->token:Ljava/lang/String;

    const-string v0, "BLOCK_REASON"

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 139
    invoke-static {p2}, Lru/rocketbank/core/model/enums/BlockReason;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->reason:Lru/rocketbank/core/model/enums/BlockReason;

    .line 140
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->reason:Lru/rocketbank/core/model/enums/BlockReason;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->reason:Lru/rocketbank/core/model/enums/BlockReason;

    sget-object v1, Lru/rocketbank/core/model/enums/BlockReason;->BAD_DOCS:Lru/rocketbank/core/model/enums/BlockReason;

    if-ne v0, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setIsPassportNeed(Z)V

    :cond_1
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModelSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->unsubscribe(Lrx/Subscription;)V

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->blockSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->unsubscribe(Lrx/Subscription;)V

    .line 186
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/BaseFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModelSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModelSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModelSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 154
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->userModelSubscription:Lrx/Subscription;

    return-void
.end method

.method public onUnblockRequest()V
    .locals 3

    .line 348
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x405

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->startForResult(Landroid/app/Activity;Lru/rocketbank/core/NewPassportOperation;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090190

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->setPadding(ZLandroid/view/View;ZZZ)V

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getStatusBarHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 93
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/CardBlockActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->isFromFeed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->setBackButton()V

    :cond_0
    const p1, 0x7f1100ae

    .line 100
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    return-void
.end method
