.class public Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RenameSafeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;
    }
.end annotation


# static fields
.field private static TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field cancelView:Lru/rocketbank/core/widgets/RocketTextView;

.field private dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

.field nameView:Lru/rocketbank/core/widgets/RocketEditText;

.field okView:Lru/rocketbank/core/widgets/RocketTextView;

.field protected renameSubscription:Lrx/Subscription;

.field protected token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 35
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    sget-object v1, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;
    .locals 1

    .line 50
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;-><init>()V

    .line 51
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected hideSpinner()V
    .locals 1

    .line 195
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c013e

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 79
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    const p2, 0x7f090288

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0900b1

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09026c

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->hideSpinner()V

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->renameSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->renameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->renameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onOkClick(Landroid/view/View;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->showSpinner()V

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->token:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/network/api/AccountApi;->editCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 149
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;Landroid/view/View;)V

    .line 150
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->renameSubscription:Lrx/Subscription;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 94
    sget-object p2, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->TOKEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->token:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->setCancelable(Z)V

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->setName()V

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setName()V
    .locals 2

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->getAccount(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 118
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)V

    .line 119
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method protected showSpinner()V
    .locals 3

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 188
    new-instance v1, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 189
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
