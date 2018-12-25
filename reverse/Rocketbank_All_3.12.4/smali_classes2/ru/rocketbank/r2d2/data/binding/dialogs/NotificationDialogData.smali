.class public final Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;
.super Ljava/lang/Object;
.source "NotificationDialogData.kt"


# instance fields
.field private final checkedItem:Landroid/databinding/ObservableInt;

.field private final textInfo:Landroid/databinding/ObservableField;
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
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->textInfo:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->checkedItem:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getCheckedItem()Landroid/databinding/ObservableInt;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->checkedItem:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getTextInfo()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->textInfo:Landroid/databinding/ObservableField;

    return-object v0
.end method
