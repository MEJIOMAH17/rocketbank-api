.class public final Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;
.super Ljava/lang/Object;
.source "FingerprintDialogData.kt"


# instance fields
.field private final helperText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isError:Landroid/databinding/ObservableBoolean;

.field private final isLoading:Landroid/databinding/ObservableBoolean;

.field private final statusText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->statusText:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->helperText:Landroid/databinding/ObservableField;

    .line 13
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading:Landroid/databinding/ObservableBoolean;

    .line 14
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getHelperText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->helperText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getStatusText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->statusText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final isError()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isLoading()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
