.class public final Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;
.super Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
.source "OperationReceiptModel.kt"


# instance fields
.field private final amountValue:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compensationSubsriotion:Lrx/Subscription;

.field private final dataValue:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headerHeight:I

.field private isFullMode:Z

.field private isFullMoneyMode:Z

.field private isRocketFullMode:Z

.field private lastTextString:Ljava/lang/String;

.field private final placeName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptUrl:Ljava/lang/String;

.field private final rocketAmountValue:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAmountValue:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zoomLevel:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 16
    iput v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->zoomLevel:F

    .line 18
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->placeName:Landroid/databinding/ObservableField;

    .line 19
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->dataValue:Landroid/databinding/ObservableField;

    .line 21
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->amountValue:Landroid/databinding/ObservableField;

    .line 22
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->rocketAmountValue:Landroid/databinding/ObservableField;

    .line 23
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->titleAmountValue:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getAmountValue()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->amountValue:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCompensationSubsriotion()Lrx/Subscription;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->compensationSubsriotion:Lrx/Subscription;

    return-object v0
.end method

.method public final getDataValue()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->dataValue:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->headerHeight:I

    return v0
.end method

.method public final getLastTextString()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->lastTextString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceName()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->placeName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getReceiptUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->receiptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRocketAmountValue()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->rocketAmountValue:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getTitleAmountValue()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->titleAmountValue:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getZoomLevel()F
    .locals 1

    .line 16
    iget v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->zoomLevel:F

    return v0
.end method

.method public final isFullMode()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isFullMode:Z

    return v0
.end method

.method public final isFullMoneyMode()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isFullMoneyMode:Z

    return v0
.end method

.method public final isRocketFullMode()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isRocketFullMode:Z

    return v0
.end method

.method public final setCompensationSubsriotion(Lrx/Subscription;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->compensationSubsriotion:Lrx/Subscription;

    return-void
.end method

.method public final setFullMode(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isFullMode:Z

    return-void
.end method

.method public final setFullMoneyMode(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isFullMoneyMode:Z

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 12
    iput p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->headerHeight:I

    return-void
.end method

.method public final setLastTextString(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->lastTextString:Ljava/lang/String;

    return-void
.end method

.method public final setReceiptUrl(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->receiptUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRocketFullMode(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->isRocketFullMode:Z

    return-void
.end method

.method public final setZoomLevel(F)V
    .locals 0

    .line 16
    iput p1, p0, Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;->zoomLevel:F

    return-void
.end method
