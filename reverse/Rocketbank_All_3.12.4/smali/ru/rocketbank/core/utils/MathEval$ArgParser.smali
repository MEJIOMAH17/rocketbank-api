.class public final Lru/rocketbank/core/utils/MathEval$ArgParser;
.super Ljava/lang/Object;
.source "MathEval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/MathEval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArgParser"
.end annotation


# instance fields
.field final exEnd:I

.field index:I

.field final synthetic this$0:Lru/rocketbank/core/utils/MathEval;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/MathEval;II)V
    .locals 1

    .line 546
    iput-object p1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p3, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->exEnd:I

    add-int/lit8 p2, p2, 0x1

    .line 549
    iput p2, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    .line 551
    invoke-static {p1}, Lru/rocketbank/core/utils/MathEval;->access$000(Lru/rocketbank/core/utils/MathEval;)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    iget v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->exEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, p3, v0}, Lru/rocketbank/core/utils/MathEval;->access$100(Lru/rocketbank/core/utils/MathEval;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    return-void
.end method

.method private _next()D
    .locals 3

    .line 572
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    invoke-static {v0}, Lru/rocketbank/core/utils/MathEval;->access$000(Lru/rocketbank/core/utils/MathEval;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    .line 573
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    iget v1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    iget v2, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->exEnd:I

    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->access$300(Lru/rocketbank/core/utils/MathEval;II)D

    move-result-wide v0

    .line 574
    iget-object v2, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    invoke-static {v2}, Lru/rocketbank/core/utils/MathEval;->access$400(Lru/rocketbank/core/utils/MathEval;)I

    move-result v2

    iput v2, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    return-wide v0
.end method


# virtual methods
.method final getIndex()I
    .locals 1

    .line 584
    iget v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 580
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    invoke-static {v0}, Lru/rocketbank/core/utils/MathEval;->access$000(Lru/rocketbank/core/utils/MathEval;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()D
    .locals 3

    .line 559
    invoke-virtual {p0}, Lru/rocketbank/core/utils/MathEval$ArgParser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->this$0:Lru/rocketbank/core/utils/MathEval;

    iget v1, p0, Lru/rocketbank/core/utils/MathEval$ArgParser;->index:I

    const-string v2, "Function has too few arguments"

    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->access$200(Lru/rocketbank/core/utils/MathEval;ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object v0

    throw v0

    .line 560
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/core/utils/MathEval$ArgParser;->_next()D

    move-result-wide v0

    return-wide v0
.end method

.method public final next(D)D
    .locals 1

    .line 567
    invoke-virtual {p0}, Lru/rocketbank/core/utils/MathEval$ArgParser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 568
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/core/utils/MathEval$ArgParser;->_next()D

    move-result-wide p1

    return-wide p1
.end method
