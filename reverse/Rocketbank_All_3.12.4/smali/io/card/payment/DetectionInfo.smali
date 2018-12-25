.class Lio/card/payment/DetectionInfo;
.super Ljava/lang/Object;
.source "DetectionInfo.java"


# instance fields
.field public bottomEdge:Z

.field public complete:Z

.field public detectedCard:Lio/card/payment/CreditCard;

.field public expiry_month:I

.field public expiry_year:I

.field public focusScore:F

.field public leftEdge:Z

.field public prediction:[I

.field public rightEdge:Z

.field public topEdge:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/card/payment/DetectionInfo;->complete:Z

    const/16 v1, 0x10

    .line 27
    new-array v1, v1, [I

    iput-object v1, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    .line 28
    iget-object v1, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 29
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 31
    new-instance v0, Lio/card/payment/CreditCard;

    invoke-direct {v0}, Lio/card/payment/CreditCard;-><init>()V

    iput-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    return-void
.end method


# virtual methods
.method final numVisibleEdges()I
    .locals 2

    .line 64
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    add-int/2addr v0, v1

    return v0
.end method
