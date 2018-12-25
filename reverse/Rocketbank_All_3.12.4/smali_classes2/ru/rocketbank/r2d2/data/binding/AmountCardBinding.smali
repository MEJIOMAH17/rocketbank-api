.class public final Lru/rocketbank/r2d2/data/binding/AmountCardBinding;
.super Ljava/lang/Object;
.source "AmountCardBinding.kt"


# instance fields
.field private final amountTargetText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cardName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cardNumber:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final comment:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commentVisibility:Landroid/databinding/ObservableInt;

.field private final commission:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "targetText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->comment:Landroid/databinding/ObservableField;

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->amountTargetText:Landroid/databinding/ObservableField;

    .line 12
    new-instance p1, Landroid/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->commission:Landroid/databinding/ObservableField;

    .line 14
    new-instance p1, Landroid/databinding/ObservableInt;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->commentVisibility:Landroid/databinding/ObservableInt;

    .line 16
    new-instance p1, Landroid/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->cardNumber:Landroid/databinding/ObservableField;

    .line 18
    new-instance p1, Landroid/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->cardName:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getAmountTargetText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->amountTargetText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCardName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->cardName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCardNumber()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->cardNumber:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getComment()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->comment:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCommentVisibility()Landroid/databinding/ObservableInt;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->commentVisibility:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getCommission()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->commission:Landroid/databinding/ObservableField;

    return-object v0
.end method
