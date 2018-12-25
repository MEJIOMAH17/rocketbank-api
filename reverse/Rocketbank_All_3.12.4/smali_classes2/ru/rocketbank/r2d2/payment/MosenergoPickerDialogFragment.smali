.class public Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MosenergoPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;
    }
.end annotation


# instance fields
.field private _fields:Lru/rocketbank/core/model/provider/ProviderValues;

.field private _listener:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->_listener:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 21
    new-instance p1, Lru/rocketbank/core/widgets/MosenergoPickerDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u0412\u044b\u0431\u043e\u0440 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f"

    .line 22
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->setFields(Lru/rocketbank/core/model/provider/ProviderValues;)V

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->setIndex(I)V

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c"

    .line 25
    new-instance v1, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$1;-><init>(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;Lru/rocketbank/core/widgets/MosenergoPickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p1
.end method

.method public setFields(Lru/rocketbank/core/model/provider/ProviderValues;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    return-void
.end method

.method public setOnMosenergoSelectedListener(Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment;->_listener:Lru/rocketbank/r2d2/payment/MosenergoPickerDialogFragment$OnMosenergoSelectedListener;

    return-void
.end method
