.class public Lru/rocketbank/core/utils/MathEval;
.super Ljava/lang/Object;
.source "MathEval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/MathEval$DefaultImpl;,
        Lru/rocketbank/core/utils/MathEval$FunctionHandler;,
        Lru/rocketbank/core/utils/MathEval$OperatorHandler;,
        Lru/rocketbank/core/utils/MathEval$Operator;,
        Lru/rocketbank/core/utils/MathEval$ArgParser;
    }
.end annotation


# static fields
.field public static final DFT_FUNCTION_HANDLER:Lru/rocketbank/core/utils/MathEval$FunctionHandler;

.field public static final DFT_OPERATOR_HANDLER:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

.field public static final LEFT_SIDE:I = 0x4c

.field public static final MATH_OPERATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_SIDE:I = 0x42

.field private static final OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

.field public static final RIGHT_SIDE:I = 0x52


# instance fields
.field private final constants:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private expression:Ljava/lang/String;

.field private final impureFunctions:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/utils/MathEval$FunctionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private isConstant:Z

.field private offset:I

.field private operators:[Lru/rocketbank/core/utils/MathEval$Operator;

.field private final pureFunctions:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/utils/MathEval$FunctionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private relaxed:Z

.field private separators:Ljava/lang/String;

.field private final variables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    .line 103
    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xd7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/utils/MathEval;->MATH_OPERATORS:Ljava/util/List;

    .line 835
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    sput-object v0, Lru/rocketbank/core/utils/MathEval;->DFT_OPERATOR_HANDLER:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

    .line 838
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    sput-object v0, Lru/rocketbank/core/utils/MathEval;->DFT_FUNCTION_HANDLER:Lru/rocketbank/core/utils/MathEval$FunctionHandler;

    .line 840
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 131
    new-array v0, v0, [Lru/rocketbank/core/utils/MathEval$Operator;

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    .line 132
    invoke-static {p0}, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->registerOperators(Lru/rocketbank/core/utils/MathEval;)V

    .line 134
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    .line 135
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    const-string v0, "E"

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "Euler"

    const-wide v1, 0x3fe2788cfc6fb61aL    # 0.577215664901533

    .line 137
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "LN2"

    const-wide v1, 0x3fe62e42fefa39ecL    # 0.693147180559945

    .line 138
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "LN10"

    const-wide v1, 0x40026bb1bbb55516L    # 2.302585092994046

    .line 139
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "LOG2E"

    const-wide v1, 0x3ff71547652b82fcL    # 1.442695040888963

    .line 140
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "LOG10E"

    const-wide v1, 0x3fdbcb7b1526e511L    # 0.434294481903252

    .line 141
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "PHI"

    const-wide v1, 0x3ff9e3779b97f4a8L    # 1.618033988749895

    .line 142
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "PI"

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    .line 143
    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;

    .line 145
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    .line 146
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    .line 147
    invoke-static {p0}, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->registerFunctions(Lru/rocketbank/core/utils/MathEval;)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    .line 152
    iput v0, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    .line 153
    iput-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/utils/MathEval;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p1, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    .line 164
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    .line 165
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    iget-object v1, p1, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 167
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    .line 168
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    iget-object v1, p1, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 170
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    .line 171
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    iget-object v1, p1, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    iget-object v1, p1, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 175
    iget-boolean v0, p1, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    iput-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    .line 176
    iget-object p1, p1, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    iput-object p1, p0, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    .line 179
    iput-boolean p1, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    return-void
.end method

.method private _evaluate(II)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 356
    sget-object v5, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval;->_evaluate(IIDLru/rocketbank/core/utils/MathEval$Operator;Lru/rocketbank/core/utils/MathEval$Operator;)D

    move-result-wide p1

    return-wide p1
.end method

.method private _evaluate(IIDLru/rocketbank/core/utils/MathEval$Operator;Lru/rocketbank/core/utils/MathEval$Operator;)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 368
    sget-object v0, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    move/from16 v2, p1

    move-wide/from16 v10, p3

    move-object/from16 v9, p6

    move-object v1, v0

    move v0, v2

    .line 371
    :goto_0
    iget-object v3, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-direct {v7, v3, v0, v8}, Lru/rocketbank/core/utils/MathEval;->skipWhitespace(Ljava/lang/String;II)I

    move-result v12

    const/16 v13, 0x4c

    if-gt v12, v8, :cond_11

    move v0, v12

    :goto_1
    if-gt v0, v8, :cond_2

    .line 376
    iget-object v1, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 377
    invoke-direct {v7, v1}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    if-eq v2, v3, :cond_0

    .line 378
    iget-boolean v1, v2, Lru/rocketbank/core/utils/MathEval$Operator;->internal:Z

    if-eqz v1, :cond_1

    sget-object v1, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    goto :goto_2

    :cond_0
    const/16 v3, 0x29

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    move-object v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 387
    :cond_2
    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 388
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    .line 390
    iget v4, v9, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    if-eq v4, v13, :cond_4

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_4

    const/16 v1, 0xb1

    .line 392
    invoke-direct {v7, v1}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object/from16 v2, p5

    goto/16 :goto_9

    :cond_4
    :goto_3
    const/16 v14, 0x28

    const/16 v15, 0x52

    if-ne v12, v0, :cond_6

    .line 395
    iget v4, v9, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    if-eq v4, v13, :cond_5

    iget v4, v1, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    if-ne v4, v15, :cond_6

    :cond_5
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_4
    move-object v6, v1

    move-wide v3, v2

    goto/16 :goto_6

    :cond_6
    if-ne v2, v14, :cond_8

    add-int/lit8 v0, v12, 0x1

    .line 399
    invoke-direct {v7, v0, v8}, Lru/rocketbank/core/utils/MathEval;->_evaluate(II)D

    move-result-wide v0

    .line 400
    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    iget v3, v7, Lru/rocketbank/core/utils/MathEval;->offset:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v7, v2, v3, v8}, Lru/rocketbank/core/utils/MathEval;->skipWhitespace(Ljava/lang/String;II)I

    move-result v2

    if-gt v2, v8, :cond_7

    .line 401
    iget-object v3, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v7, v3}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v3

    goto :goto_5

    :cond_7
    sget-object v3, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    :goto_5
    move-object v6, v3

    move-wide v3, v0

    move v0, v2

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_a

    .line 403
    iget-char v2, v1, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    if-ne v2, v14, :cond_a

    .line 404
    invoke-direct {v7, v12, v8}, Lru/rocketbank/core/utils/MathEval;->doFunction(II)D

    move-result-wide v0

    .line 405
    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    iget v3, v7, Lru/rocketbank/core/utils/MathEval;->offset:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v7, v2, v3, v8}, Lru/rocketbank/core/utils/MathEval;->skipWhitespace(Ljava/lang/String;II)I

    move-result v2

    if-gt v2, v8, :cond_9

    .line 406
    iget-object v3, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v7, v3}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v3

    goto :goto_5

    :cond_9
    sget-object v3, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit8 v2, v0, -0x1

    .line 409
    invoke-direct {v7, v12, v2}, Lru/rocketbank/core/utils/MathEval;->doNamedVal(II)D

    move-result-wide v2

    goto :goto_4

    .line 413
    :cond_b
    :try_start_0
    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    const-string v3, "0x"

    invoke-direct {v7, v2, v12, v3}, Lru/rocketbank/core/utils/MathEval;->stringOfsEq(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    add-int/lit8 v3, v12, 0x2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-double v2, v2

    goto :goto_4

    .line 414
    :cond_c
    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 422
    :goto_6
    invoke-direct {v7, v9, v13}, Lru/rocketbank/core/utils/MathEval;->opPrecedence(Lru/rocketbank/core/utils/MathEval$Operator;I)I

    move-result v1

    invoke-direct {v7, v6, v15}, Lru/rocketbank/core/utils/MathEval;->opPrecedence(Lru/rocketbank/core/utils/MathEval$Operator;I)I

    move-result v2

    if-ge v1, v2, :cond_e

    add-int/lit8 v1, v0, 0x1

    move-object v0, v7

    move v2, v8

    move-object v5, v9

    .line 423
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval;->_evaluate(IIDLru/rocketbank/core/utils/MathEval$Operator;Lru/rocketbank/core/utils/MathEval$Operator;)D

    move-result-wide v0

    .line 424
    iget v2, v7, Lru/rocketbank/core/utils/MathEval;->offset:I

    if-gt v2, v8, :cond_d

    .line 425
    iget-object v3, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v7, v3}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object v3

    goto :goto_7

    :cond_d
    sget-object v3, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    :goto_7
    move-wide v5, v0

    move/from16 v16, v2

    move-object v4, v3

    goto :goto_8

    :cond_e
    move/from16 v16, v0

    move-wide/from16 v17, v3

    move-object v4, v6

    move-wide/from16 v5, v17

    :goto_8
    move-object v0, v7

    move v1, v12

    move-wide v2, v10

    move-object v10, v4

    move-object v4, v9

    .line 428
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval;->doOperation(IDLru/rocketbank/core/utils/MathEval$Operator;D)D

    move-result-wide v0

    move-object/from16 v2, p5

    .line 431
    invoke-direct {v7, v2, v13}, Lru/rocketbank/core/utils/MathEval;->opPrecedence(Lru/rocketbank/core/utils/MathEval$Operator;I)I

    move-result v3

    invoke-direct {v7, v10, v15}, Lru/rocketbank/core/utils/MathEval;->opPrecedence(Lru/rocketbank/core/utils/MathEval$Operator;I)I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 432
    iget-char v3, v10, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    if-ne v3, v14, :cond_f

    add-int/lit8 v3, v16, -0x1

    move-object v9, v10

    move-wide v10, v0

    move v0, v3

    move-object v1, v9

    goto :goto_9

    :cond_f
    move-object v9, v10

    move-wide v10, v0

    move-object v1, v9

    move/from16 v0, v16

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move v2, v12

    goto/16 :goto_0

    :cond_10
    move-wide v2, v0

    move-object v4, v10

    move v1, v12

    move/from16 v12, v16

    goto :goto_a

    .line 417
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid numeric value \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v12, v0}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object v0

    throw v0

    :cond_11
    move-object v4, v9

    move-wide/from16 v17, v10

    move-object v10, v1

    move v1, v2

    move-wide/from16 v2, v17

    :goto_a
    if-le v12, v8, :cond_13

    .line 434
    sget-object v0, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    if-eq v4, v0, :cond_13

    .line 435
    iget v0, v4, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    if-ne v0, v13, :cond_12

    const-wide/high16 v5, 0x7ff8000000000000L    # NaN

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/MathEval;->doOperation(IDLru/rocketbank/core/utils/MathEval$Operator;D)D

    move-result-wide v2

    goto :goto_b

    .line 436
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expression ends with a blank operand after operator \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, v10, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v12, v0}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object v0

    throw v0

    .line 438
    :cond_13
    :goto_b
    iput v12, v7, Lru/rocketbank/core/utils/MathEval;->offset:I

    return-wide v2
.end method

.method static synthetic access$000(Lru/rocketbank/core/utils/MathEval;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/core/utils/MathEval;Ljava/lang/String;II)I
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/core/utils/MathEval;->skipWhitespace(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lru/rocketbank/core/utils/MathEval;ILjava/lang/String;)Ljava/lang/ArithmeticException;
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/core/utils/MathEval;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->_evaluate(II)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lru/rocketbank/core/utils/MathEval;)I
    .locals 0

    .line 100
    iget p0, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    return p0
.end method

.method private doFunction(II)D
    .locals 5

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    .line 474
    iget-object v1, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Lru/rocketbank/core/utils/MathEval$ArgParser;

    invoke-direct {v2, p0, v0, p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;-><init>(Lru/rocketbank/core/utils/MathEval;II)V

    const/4 p2, 0x0

    .line 481
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/MathEval$FunctionHandler;

    if-eqz v0, :cond_2

    .line 482
    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/utils/MathEval$FunctionHandler;->evaluateFunction(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$ArgParser;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p1

    const-string p2, "Function has too many arguments"

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 497
    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    return-wide v3

    .line 484
    :cond_2
    :try_start_1
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/MathEval$FunctionHandler;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    .line 485
    iput-boolean v3, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    .line 486
    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/utils/MathEval$FunctionHandler;->evaluateFunction(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$ArgParser;)D

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p1

    const-string p2, "Function has too many arguments"

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 497
    :cond_3
    invoke-virtual {v2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    return-wide v3

    .line 500
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Function \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not recognized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Unexpected exception parsing function arguments"

    .line 493
    invoke-direct {p0, p1, v1, v0}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 491
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Function not supported in this JVM: \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 490
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_6

    .line 496
    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p1

    const-string p2, "Function has too many arguments"

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 497
    :cond_5
    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->getIndex()I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    :cond_6
    throw p1
.end method

.method private doNamedVal(II)D
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 504
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 509
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v0, p2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 510
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {v0, p2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 511
    :cond_2
    iget-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    const-wide/16 p1, 0x0

    return-wide p1

    .line 513
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized constant or variable \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1
.end method

.method private doOperation(IDLru/rocketbank/core/utils/MathEval$Operator;D)D
    .locals 6

    .line 457
    iget v0, p4, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Mathematical NaN detected in right-operand"

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 458
    :cond_0
    iget v0, p4, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "Mathematical NaN detected in left-operand"

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    .line 460
    :cond_1
    :try_start_0
    iget-object v0, p4, Lru/rocketbank/core/utils/MathEval$Operator;->handler:Lru/rocketbank/core/utils/MathEval$OperatorHandler;

    iget-char v3, p4, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    move-wide v1, p2

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lru/rocketbank/core/utils/MathEval$OperatorHandler;->evaluateOperator(DCD)D

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    :goto_0
    if-lez p1, :cond_2

    .line 466
    iget-object p2, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-direct {p0, p2}, Lru/rocketbank/core/utils/MathEval;->getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;

    move-result-object p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 467
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Operator \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p3, p4, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\" not handled by math engine (Programmer error: The list of operators is inconsistent within the engine)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p2

    .line 462
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Mathematical expression \""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" failed to evaluate"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lru/rocketbank/core/utils/MathEval;->exception(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/ArithmeticException;

    move-result-object p1

    throw p1
.end method

.method private exception(ILjava/lang/String;)Ljava/lang/ArithmeticException;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at offset "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in expression \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private exception(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/ArithmeticException;
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at offset "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in expression \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" (Cause: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getOperator(C)Lru/rocketbank/core/utils/MathEval$Operator;
    .locals 1

    .line 443
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 444
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    return-object p1

    .line 447
    :cond_0
    sget-object p1, Lru/rocketbank/core/utils/MathEval;->OPERAND:Lru/rocketbank/core/utils/MathEval$Operator;

    return-object p1
.end method

.method private opPrecedence(Lru/rocketbank/core/utils/MathEval$Operator;I)I
    .locals 2

    if-nez p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    .line 452
    :cond_0
    iget v0, p1, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    iget v0, p1, Lru/rocketbank/core/utils/MathEval$Operator;->unary:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1

    :cond_2
    :goto_0
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_3

    iget p1, p1, Lru/rocketbank/core/utils/MathEval$Operator;->precedenceL:I

    return p1

    :cond_3
    iget p1, p1, Lru/rocketbank/core/utils/MathEval$Operator;->precedenceR:I

    return p1
.end method

.method private skipWhitespace(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-gt p2, p3, :cond_0

    .line 529
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private stringOfsEq(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .line 525
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method private validateName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Names for constants, variables and functions must start with a letter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v0, 0x28

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Names for constants, variables and functions may not contain a parenthesis"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()Lru/rocketbank/core/utils/MathEval;
    .locals 1

    .line 273
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    return-object p0
.end method

.method public clear(Ljava/lang/String;)Lru/rocketbank/core/utils/MathEval;
    .locals 3

    .line 279
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\uffff"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lru/rocketbank/core/utils/MathEval;->expression:Ljava/lang/String;

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    const/4 v1, 0x0

    .line 309
    iput v1, p0, Lru/rocketbank/core/utils/MathEval;->offset:I

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lru/rocketbank/core/utils/MathEval;->_evaluate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConstant(Ljava/lang/String;)D
    .locals 2

    .line 188
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConstants()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)D
    .locals 2

    .line 248
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVariableRequired()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    return v0
.end method

.method public getVariables()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVariablesWithin(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 326
    iget-object v1, p0, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 328
    :goto_0
    iget-object v4, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 329
    iget-object v4, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lru/rocketbank/core/utils/MathEval$Operator;->internal:Z

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_0

    :cond_1
    const-string v3, "()"

    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    .line 335
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lru/rocketbank/core/utils/MathEval;->separators:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :goto_1
    move-object v3, p1

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 336
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v5

    goto :goto_2

    .line 339
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_3

    .line 340
    iget-object v5, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v5, v3}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 342
    iget-object p1, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {p1, v3}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public previousExpressionConstant()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lru/rocketbank/core/utils/MathEval;->isConstant:Z

    return v0
.end method

.method public setConstant(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;
    .locals 0

    .line 200
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->setConstant(Ljava/lang/String;Ljava/lang/Double;)Lru/rocketbank/core/utils/MathEval;

    move-result-object p1

    return-object p1
.end method

.method public setConstant(Ljava/lang/String;Ljava/lang/Double;)Lru/rocketbank/core/utils/MathEval;
    .locals 1

    .line 205
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Constants may not be redefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/core/utils/MathEval;->validateName(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->constants:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;Z)Lru/rocketbank/core/utils/MathEval;

    move-result-object p1

    return-object p1
.end method

.method public setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;Z)Lru/rocketbank/core/utils/MathEval;
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lru/rocketbank/core/utils/MathEval;->validateName(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 240
    iget-object p2, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    invoke-interface {p2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    invoke-interface {p2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 241
    iget-object p3, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    invoke-interface {p3, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    invoke-interface {p3, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_1
    iget-object p3, p0, Lru/rocketbank/core/utils/MathEval;->pureFunctions:Ljava/util/SortedMap;

    invoke-interface {p3, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lru/rocketbank/core/utils/MathEval;->impureFunctions:Ljava/util/SortedMap;

    invoke-interface {p2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;
    .locals 4

    .line 215
    iget-char v0, p1, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    iget-object v1, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 216
    iget-char v0, p1, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    iget-char v1, p1, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    rem-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lru/rocketbank/core/utils/MathEval$Operator;

    .line 217
    iget-object v1, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    iget-object v2, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    const/4 v3, 0x0

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iput-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    .line 220
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->operators:[Lru/rocketbank/core/utils/MathEval$Operator;

    iget-char v1, p1, Lru/rocketbank/core/utils/MathEval$Operator;->symbol:C

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setVariable(Ljava/lang/String;D)Lru/rocketbank/core/utils/MathEval;
    .locals 0

    .line 260
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/utils/MathEval;->setVariable(Ljava/lang/String;Ljava/lang/Double;)Lru/rocketbank/core/utils/MathEval;

    move-result-object p1

    return-object p1
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Double;)Lru/rocketbank/core/utils/MathEval;
    .locals 1

    .line 265
    invoke-direct {p0, p1}, Lru/rocketbank/core/utils/MathEval;->validateName(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 266
    iget-object p2, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {p2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/MathEval;->variables:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setVariableRequired(Z)Lru/rocketbank/core/utils/MathEval;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 290
    iput-boolean p1, p0, Lru/rocketbank/core/utils/MathEval;->relaxed:Z

    return-object p0
.end method
