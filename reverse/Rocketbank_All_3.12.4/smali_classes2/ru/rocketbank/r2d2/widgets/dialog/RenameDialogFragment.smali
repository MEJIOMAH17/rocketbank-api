.class public Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RenameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;,
        Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;
    }
.end annotation


# static fields
.field private static IS_MY:Ljava/lang/String; = "IS_MY"

.field private static NAME:Ljava/lang/String; = "NAME"

.field private static TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field cancelView:Lru/rocketbank/core/widgets/RocketTextView;

.field private dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

.field protected isMy:Ljava/lang/Boolean;

.field nameView:Lru/rocketbank/core/widgets/RocketEditText;

.field okView:Lru/rocketbank/core/widgets/RocketTextView;

.field private onRename:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.method static synthetic access$000(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)Lrx/functions/Action1;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 35
    invoke-static {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    sget-object v1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
    .locals 2

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;-><init>()V

    .line 56
    invoke-static {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 57
    sget-object v1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->IS_MY:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    sget-object p1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    .line 126
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    return-void
.end method

.method protected hideSpinner()V
    .locals 1

    .line 251
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 235
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c013d

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090288

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0900b1

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09026c

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->hideSpinner()V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->renameSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->renameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->renameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onOkClick(Landroid/view/View;)V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->showSpinner()V

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->isMy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->token:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/network/api/AccountApi;->editCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 178
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$5;

    invoke-direct {v2, p0, p1, v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$5;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->renameSubscription:Lrx/Subscription;

    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->token:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/network/api/AccountApi;->renameCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 202
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;

    invoke-direct {v2, p0, p1, v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->renameSubscription:Lrx/Subscription;

    return-void
.end method

.method public onRename(Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 99
    sget-object p2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->TOKEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->token:Ljava/lang/String;

    .line 100
    sget-object p2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->IS_MY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->isMy:Ljava/lang/Boolean;

    .line 102
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 103
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 105
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->setName()V

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->showKeyboard()V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$1;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$2;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setName()V
    .locals 3

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->isMy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->getAccount(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 132
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$3;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)V

    .line 133
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showKeyboard()V
    .locals 2

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    new-instance v1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$4;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected showSpinner()V
    .locals 3

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    .line 242
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 245
    new-instance v1, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 246
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
