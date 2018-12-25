.class public final Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;
.super Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
.source "TransferAccountData.kt"


# instance fields
.field private final currencyDownDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final currencyUpDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final infoText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private final infoTextColor:Landroid/databinding/ObservableInt;

.field private progressVisible:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 14
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->infoText:Landroid/databinding/ObservableField;

    .line 15
    new-instance p1, Landroid/databinding/ObservableInt;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->infoTextColor:Landroid/databinding/ObservableInt;

    .line 17
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->currencyUpDrawable:Landroid/databinding/ObservableField;

    .line 18
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->currencyDownDrawable:Landroid/databinding/ObservableField;

    .line 20
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, v0}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->progressVisible:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getCurrencyDownDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->currencyDownDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCurrencyUpDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->currencyUpDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getInfoText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->infoText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getInfoTextColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->infoTextColor:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getProgressVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->progressVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final setProgressVisible(Landroid/databinding/ObservableBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->progressVisible:Landroid/databinding/ObservableBoolean;

    return-void
.end method
