.class public Lru/rocketbank/r2d2/fragments/AlertDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;
    }
.end annotation


# instance fields
.field private _listenerPositive:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/AlertDialogFragment;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->_listenerPositive:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;
    .locals 3

    .line 20
    new-instance v0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 23
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "titleBalance"

    const-string v2, "\u0420\u043e\u043a\u0435\u0442\u0431\u0430\u043d\u043a"

    .line 24
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;
    .locals 3

    .line 32
    new-instance v0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "titleBalance"

    .line 36
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->setCancelable(Z)V

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleBalance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "OK"

    new-instance v1, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/AlertDialogFragment;)V

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setOnPositiveListener(Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;
    .locals 0

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->_listenerPositive:Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    return-object p0
.end method
