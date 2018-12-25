.class public Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;
.super Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
.source "RenameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentTransferRenameDialogFragment"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private onRename:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;)Lrx/functions/Action1;
    .locals 0

    .line 257
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;
    .locals 2

    .line 263
    new-instance v0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;-><init>()V

    .line 264
    invoke-static {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->access$100(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "NAME"

    .line 265
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onOkClick(Landroid/view/View;)V
    .locals 3

    .line 280
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->showSpinner()V

    .line 281
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->token:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/network/api/AccountApi;->renameLinkedAccount(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 283
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment$1;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->renameSubscription:Lrx/Subscription;

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

    .line 271
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-void
.end method

.method protected setName()V
    .locals 3

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
