.class Lru/rocketbank/core/utils/MathEval$DefaultImpl;
.super Ljava/lang/Object;
.source "MathEval.java"

# interfaces
.implements Lru/rocketbank/core/utils/MathEval$FunctionHandler;
.implements Lru/rocketbank/core/utils/MathEval$OperatorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/MathEval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultImpl"
.end annotation


# static fields
.field static final INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

.field private static final OPR_ADD:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_BKT:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_DIV1:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_DIV2:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_EQU:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_MLT1:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_MLT2:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_MLT3:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_MOD:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_NEG:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_PWR:Lru/rocketbank/core/utils/MathEval$Operator;

.field private static final OPR_SUB:Lru/rocketbank/core/utils/MathEval$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 757
    new-instance v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-direct {v0}, Lru/rocketbank/core/utils/MathEval$DefaultImpl;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    .line 759
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v7, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v2, 0x3d

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x52

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_EQU:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 760
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v14, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v9, 0x5e

    const/16 v10, 0x50

    const/16 v11, 0x51

    const/16 v12, 0x42

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_PWR:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 761
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v7, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v2, 0xb1

    const/16 v3, 0x3c

    const/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CIIIZLru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_NEG:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 762
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v2, 0x28

    const/16 v3, 0x2a

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT1:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 763
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0xd7

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT2:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 764
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0xb7

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT3:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 765
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-direct {v0, v2, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_BKT:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 766
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0x2f

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_DIV1:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 767
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0xf7

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_DIV2:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 768
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0x25

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MOD:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 769
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v2, 0x14

    const/16 v3, 0x2b

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_ADD:Lru/rocketbank/core/utils/MathEval$Operator;

    .line 770
    new-instance v0, Lru/rocketbank/core/utils/MathEval$Operator;

    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/16 v3, 0x2d

    invoke-direct {v0, v3, v2, v1}, Lru/rocketbank/core/utils/MathEval$Operator;-><init>(CILru/rocketbank/core/utils/MathEval$OperatorHandler;)V

    sput-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_SUB:Lru/rocketbank/core/utils/MathEval$Operator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerFunctions(Lru/rocketbank/core/utils/MathEval;)V
    .locals 3

    const-string v0, "abs"

    .line 790
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "acos"

    .line 791
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "asin"

    .line 792
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "atan"

    .line 793
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "cbrt"

    .line 794
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "ceil"

    .line 795
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "cos"

    .line 796
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "cosh"

    .line 797
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "exp"

    .line 798
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "expm1"

    .line 799
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "floor"

    .line 800
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "log"

    .line 802
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "log10"

    .line 803
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "log1p"

    .line 804
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "max"

    .line 805
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "min"

    .line 806
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "random"

    .line 808
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;Z)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "round"

    .line 809
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "roundHE"

    .line 810
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "signum"

    .line 811
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "sin"

    .line 812
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "sinh"

    .line 813
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "sqrt"

    .line 814
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "tan"

    .line 815
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "tanh"

    .line 816
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "toDegrees"

    .line 817
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "toRadians"

    .line 818
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    const-string v0, "ulp"

    .line 819
    sget-object v1, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->INSTANCE:Lru/rocketbank/core/utils/MathEval$DefaultImpl;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/utils/MathEval;->setFunctionHandler(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$FunctionHandler;)Lru/rocketbank/core/utils/MathEval;

    return-void
.end method

.method static registerOperators(Lru/rocketbank/core/utils/MathEval;)V
    .locals 1

    .line 774
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_EQU:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 775
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_PWR:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 776
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_NEG:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 777
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT1:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 778
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT2:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 779
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MLT3:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 780
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_BKT:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 781
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_DIV1:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 782
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_DIV2:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 783
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_MOD:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 784
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_ADD:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    .line 785
    sget-object v0, Lru/rocketbank/core/utils/MathEval$DefaultImpl;->OPR_SUB:Lru/rocketbank/core/utils/MathEval$Operator;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/MathEval;->setOperator(Lru/rocketbank/core/utils/MathEval$Operator;)Lru/rocketbank/core/utils/MathEval;

    return-void
.end method


# virtual methods
.method public evaluateFunction(Ljava/lang/String;Lru/rocketbank/core/utils/MathEval$ArgParser;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v0, "ulp"

    .line 750
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_2
    const-string v0, "tan"

    .line 744
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "tanh"

    .line 745
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    return-wide p1

    :cond_1
    const-string v0, "toDegrees"

    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1

    :cond_2
    const-string v0, "toRadians"

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_3
    const-string v0, "signum"

    .line 738
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    return-wide p1

    :cond_3
    const-string v0, "sin"

    .line 739
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1

    :cond_4
    const-string v0, "sinh"

    .line 740
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    return-wide p1

    :cond_5
    const-string v0, "sqrt"

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_4
    const-string v0, "random"

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    return-wide p1

    :cond_6
    const-string v0, "round"

    .line 734
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1

    :cond_7
    const-string v0, "roundHE"

    .line 735
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_5
    const-string v0, "max"

    .line 726
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide v0

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1

    :cond_8
    const-string v0, "min"

    .line 727
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide v0

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_6
    const-string v0, "log"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    return-wide p1

    :cond_9
    const-string v0, "log10"

    .line 722
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    return-wide p1

    :cond_a
    const-string v0, "log1p"

    .line 723
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_7
    const-string v0, "floor"

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_8
    const-string v0, "exp"

    .line 711
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    return-wide p1

    :cond_b
    const-string v0, "expm1"

    .line 712
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->expm1(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_9
    const-string v0, "cbrt"

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p1

    return-wide p1

    :cond_c
    const-string v0, "ceil"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_d
    const-string v0, "cos"

    .line 707
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1

    :cond_e
    const-string v0, "cosh"

    .line 708
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    return-wide p1

    :pswitch_a
    const-string v0, "abs"

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1

    :cond_f
    const-string v0, "acos"

    .line 700
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    return-wide p1

    :cond_10
    const-string v0, "asin"

    .line 701
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1

    :cond_11
    const-string v0, "atan"

    .line 702
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MathEval$ArgParser;->next()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    return-wide p1

    .line 754
    :cond_12
    :goto_0
    :pswitch_b
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MathEval internal function setup is incorrect - internal function \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not handled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public evaluateOperator(DCD)D
    .locals 0

    sparse-switch p3, :sswitch_data_0

    .line 691
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "MathEval internal operator setup is incorrect - internal operator \""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\" not handled"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    div-double/2addr p1, p4

    return-wide p1

    :sswitch_1
    mul-double/2addr p1, p4

    return-wide p1

    :sswitch_2
    mul-double/2addr p1, p4

    return-wide p1

    :sswitch_3
    neg-double p1, p4

    return-wide p1

    .line 680
    :sswitch_4
    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1

    :sswitch_5
    return-wide p4

    :sswitch_6
    div-double/2addr p1, p4

    return-wide p1

    :sswitch_7
    sub-double/2addr p1, p4

    return-wide p1

    :sswitch_8
    add-double/2addr p1, p4

    return-wide p1

    :sswitch_9
    mul-double/2addr p1, p4

    return-wide p1

    :sswitch_a
    mul-double/2addr p1, p4

    return-wide p1

    :sswitch_b
    rem-double/2addr p1, p4

    return-wide p1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_b
        0x28 -> :sswitch_a
        0x2a -> :sswitch_9
        0x2b -> :sswitch_8
        0x2d -> :sswitch_7
        0x2f -> :sswitch_6
        0x3d -> :sswitch_5
        0x5e -> :sswitch_4
        0xb1 -> :sswitch_3
        0xb7 -> :sswitch_2
        0xd7 -> :sswitch_1
        0xf7 -> :sswitch_0
    .end sparse-switch
.end method
