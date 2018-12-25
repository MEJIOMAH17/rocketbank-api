.class public final Lru/rocketbank/core/utils/MathEval$Operator;
.super Ljava/lang/Object;
.source "MathEval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/MathEval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operator"
.end annotation


# instance fields
.field final handler:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

.field final internal:Z

.field final precedenceL:I

.field final precedenceR:I

.field final symbol:C

.field final unary:I


# direct methods
.method public constructor <init>(CIIILru/rocketbank/core/utils/MathEval$OperatorHandler;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 623
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    if-ltz p2, :cond_4

    const/16 p1, 0x63

    if-le p2, p1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p3, :cond_3

    if-le p3, p1, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/utils/MathEval$Operator;->handler:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Operator handler is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 626
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Operator precendence must be 0 - 99"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Operator precendence must be 0 - 99"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-char p1, p0, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    .line 632
    iput p2, p0, Lru/rocketbank/core/utils/MathEval$Operator;->precedenceL:I

    .line 633
    iput p3, p0, Lru/rocketbank/core/utils/MathEval$Operator;->precedenceR:I

    .line 634
    iput p4, p0, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    .line 635
    iput-boolean p5, p0, Lru/rocketbank/core/utils/MathEval$Operator;->internal:Z

    .line 636
    iput-object p6, p0, Lru/rocketbank/core/utils/MathEval$Operator;->handler:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

    return-void
.end method

.method public constructor <init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V
    .locals 7

    const/16 v4, 0x42

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move-object v6, p3

    .line 612
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MathOperator[\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
