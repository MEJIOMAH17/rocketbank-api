.class public Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/Chain;",
            ">;"
        }
    .end annotation
.end field

.field private final headerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;"
        }
    .end annotation
.end field

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Chain;->dependents:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 2035
    iput v0, p0, Landroid/support/constraint/solver/widgets/Chain;->state:I

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x2

    if-nez v11, :cond_0

    .line 49
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 50
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move v9, v1

    move-object v14, v2

    const/4 v15, 0x0

    goto :goto_0

    .line 53
    :cond_0
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 54
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move v9, v1

    move-object v14, v2

    move v15, v12

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_53

    .line 57
    aget-object v7, v14, v8

    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-static {v0, v10, v11, v15, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v8

    move/from16 v18, v9

    goto/16 :goto_32

    .line 1090
    :cond_2
    :goto_2
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v11

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/16 v16, 0x0

    if-nez v11, :cond_7

    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v5, v7

    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_8

    .line 1100
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, v15, 0x1

    aget-object v6, v6, v17

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_4

    .line 1102
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1103
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v5, :cond_5

    :cond_4
    move-object/from16 v6, v16

    :cond_5
    if-eqz v6, :cond_6

    move-object v5, v6

    goto :goto_4

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move-object v5, v7

    :cond_8
    if-nez v11, :cond_c

    .line 1123
    iget v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v1, :cond_9

    move v1, v4

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 1124
    :goto_5
    iget v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v3, v4, :cond_a

    move v3, v4

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 1125
    :goto_6
    iget v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v6, v12, :cond_b

    :goto_7
    move v6, v4

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v19, v6

    move-object v6, v7

    move/from16 v31, v9

    move-object/from16 v3, v16

    move-object v4, v3

    move-object v12, v4

    move-object/from16 v18, v12

    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v30, 0x0

    goto :goto_b

    .line 1127
    :cond_c
    iget v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_d

    move v1, v4

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    .line 1128
    :goto_9
    iget v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v3, v4, :cond_e

    move v3, v4

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    .line 1129
    :goto_a
    iget v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v6, v12, :cond_b

    goto :goto_7

    :goto_b
    if-nez v1, :cond_1d

    .line 1141
    iget-object v13, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v16, v13, v11

    .line 1142
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v9, 0x8

    if-eq v13, v9, :cond_11

    if-eqz v3, :cond_f

    .line 1144
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v6, v3, v11

    :cond_f
    if-nez v12, :cond_10

    move-object v12, v6

    :cond_10
    move-object v3, v6

    .line 1152
    :cond_11
    iget-object v13, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v15

    .line 1154
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 1156
    iget-object v9, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_12

    if-eq v6, v7, :cond_12

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    move/from16 v32, v1

    const/16 v1, 0x8

    if-eq v9, v1, :cond_13

    .line 1157
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v22, v22, v1

    goto :goto_c

    :cond_12
    move/from16 v32, v1

    :cond_13
    :goto_c
    move/from16 v1, v22

    if-eqz v19, :cond_14

    if-eq v6, v7, :cond_14

    if-eq v6, v12, :cond_14

    const/4 v9, 0x6

    goto :goto_d

    :cond_14
    const/4 v9, 0x1

    :goto_d
    if-ne v6, v12, :cond_15

    move-object/from16 v33, v3

    .line 1165
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v34, v8

    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v35, v12

    const/4 v12, 0x5

    invoke-virtual {v10, v3, v8, v1, v12}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_e

    :cond_15
    move-object/from16 v33, v3

    move/from16 v34, v8

    move-object/from16 v35, v12

    .line 1168
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v12, 0x6

    invoke-virtual {v10, v3, v8, v1, v12}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 1171
    :goto_e
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, v3, v8, v1, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1174
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v16, v1, v11

    .line 1175
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_18

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v11

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_18

    add-int/lit8 v17, v17, 0x1

    .line 1178
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v1, v1, v11

    add-float v30, v30, v1

    if-nez v18, :cond_16

    move-object/from16 v18, v6

    goto :goto_f

    .line 1182
    :cond_16
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v6, v1, v11

    :goto_f
    if-eqz v2, :cond_17

    .line 1186
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v15, 0x1

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x0

    const/4 v8, 0x6

    invoke-virtual {v10, v1, v3, v4, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_17
    move-object v4, v6

    :cond_18
    if-eqz v2, :cond_19

    .line 1192
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v8, 0x6

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v3, v13, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_10

    :cond_19
    const/4 v13, 0x0

    .line 1198
    :goto_10
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v15, 0x1

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1a

    .line 1200
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1201
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v6, :cond_1b

    :cond_1a
    move-object/from16 v1, v16

    :cond_1b
    if-eqz v1, :cond_1c

    move-object v6, v1

    move/from16 v1, v32

    move-object/from16 v3, v33

    move/from16 v8, v34

    move-object/from16 v12, v35

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v3, v33

    move/from16 v8, v34

    move-object/from16 v12, v35

    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_1d
    move/from16 v34, v8

    const/4 v13, 0x0

    if-eqz v3, :cond_1e

    .line 1216
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v15, 0x1

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1e

    .line 1217
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v4

    .line 1218
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v9, v4

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1219
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/4 v9, 0x5

    .line 1218
    invoke-virtual {v10, v8, v4, v1, v9}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_11

    :cond_1e
    const/4 v9, 0x5

    :goto_11
    if-eqz v2, :cond_1f

    .line 1225
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v15, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v8, v2

    .line 1227
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    const/4 v8, 0x6

    .line 1225
    invoke-virtual {v10, v1, v4, v2, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_1f
    if-lez v17, :cond_26

    move-object/from16 v1, v18

    :goto_12
    if-eqz v1, :cond_26

    .line 1234
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v11

    if-eqz v2, :cond_24

    .line 1236
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v23, v4, v11

    .line 1237
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v25, v4, v11

    .line 1238
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1239
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, v15, 0x1

    aget-object v8, v8, v17

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1240
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v15

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1241
    iget-object v13, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v17

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v11, :cond_20

    .line 1247
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1248
    iget v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :goto_13
    move-object/from16 v36, v2

    goto :goto_14

    .line 1250
    :cond_20
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1251
    iget v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    goto :goto_13

    :goto_14
    const/4 v2, 0x3

    if-eqz v1, :cond_21

    if-ne v1, v2, :cond_22

    :cond_21
    if-eqz v0, :cond_23

    if-ne v0, v2, :cond_22

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    goto :goto_16

    :cond_23
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_25

    .line 1259
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    move-object/from16 v22, v0

    move/from16 v24, v30

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v13

    .line 1260
    invoke-virtual/range {v22 .. v29}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 1262
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_17

    :cond_24
    move-object/from16 v36, v2

    :cond_25
    :goto_17
    move-object/from16 v1, v36

    move-object/from16 v0, p0

    const/4 v9, 0x5

    const/4 v13, 0x0

    goto :goto_12

    :cond_26
    if-eqz v12, :cond_2e

    if-eq v12, v3, :cond_27

    if-eqz v19, :cond_2e

    .line 1283
    :cond_27
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v15

    .line 1284
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v15, 0x1

    aget-object v1, v1, v2

    .line 1285
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_28

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_18

    :cond_28
    move-object/from16 v4, v16

    .line 1286
    :goto_18
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_29

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_19

    :cond_29
    move-object/from16 v7, v16

    :goto_19
    if-ne v12, v3, :cond_2a

    .line 1288
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v15

    .line 1289
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_2a
    if-eqz v4, :cond_2d

    if-eqz v7, :cond_2d

    if-nez v11, :cond_2b

    .line 1294
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1a

    .line 1296
    :cond_2b
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1298
    :goto_1a
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    if-nez v3, :cond_2c

    move-object v13, v6

    goto :goto_1b

    :cond_2c
    move-object v13, v3

    .line 1303
    :goto_1b
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 1304
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x5

    move-object v1, v10

    move-object v3, v4

    move v4, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v0

    move-object/from16 v37, v13

    move/from16 v0, v34

    move-object v13, v8

    move v8, v9

    move/from16 v18, v31

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1c

    :cond_2d
    move-object v13, v6

    move/from16 v18, v31

    move/from16 v0, v34

    move-object/from16 v37, v3

    :goto_1c
    move-object/from16 v50, v13

    move-object/from16 v6, v37

    goto/16 :goto_30

    :cond_2e
    move-object v13, v6

    move/from16 v18, v31

    move/from16 v0, v34

    if-eqz v20, :cond_3e

    if-eqz v12, :cond_3e

    move-object v1, v12

    move-object v9, v1

    :goto_1d
    if-eqz v9, :cond_3d

    .line 1312
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v8, v2, v11

    if-nez v8, :cond_30

    if-ne v9, v3, :cond_2f

    goto :goto_1e

    :cond_2f
    move-object/from16 v43, v3

    move-object/from16 v42, v7

    move-object/from16 v22, v8

    move-object/from16 v17, v9

    goto/16 :goto_25

    .line 1314
    :cond_30
    :goto_1e
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v15

    .line 1315
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1316
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_31

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1f

    :cond_31
    move-object/from16 v5, v16

    :goto_1f
    if-eq v1, v9, :cond_32

    .line 1318
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_20

    :cond_32
    if-ne v9, v12, :cond_34

    if-ne v1, v9, :cond_34

    .line 1320
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_33

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_20

    :cond_33
    move-object/from16 v5, v16

    .line 1326
    :cond_34
    :goto_20
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 1327
    iget-object v6, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, v15, 0x1

    aget-object v6, v6, v17

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    if-eqz v8, :cond_36

    move-object/from16 v38, v7

    .line 1330
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v15

    move-object/from16 v39, v8

    .line 1331
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v40, v8

    .line 1332
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_35

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_22

    :cond_35
    move-object/from16 v8, v16

    goto :goto_22

    :cond_36
    move-object/from16 v38, v7

    move-object/from16 v39, v8

    .line 1334
    iget-object v7, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v17

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_37

    .line 1336
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v41, v7

    goto :goto_21

    :cond_37
    move-object/from16 v41, v7

    move-object/from16 v8, v16

    .line 1338
    :goto_21
    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v17

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v40, v8

    move-object v8, v7

    move-object/from16 v7, v41

    :goto_22
    if-eqz v7, :cond_38

    .line 1342
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v6, v7

    :cond_38
    if-eqz v1, :cond_39

    .line 1345
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v2, v1

    :cond_39
    if-eqz v4, :cond_3c

    if-eqz v5, :cond_3c

    if-eqz v40, :cond_3c

    if-eqz v8, :cond_3c

    if-ne v9, v12, :cond_3a

    .line 1350
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move v7, v1

    goto :goto_23

    :cond_3a
    move v7, v2

    :goto_23
    if-ne v9, v3, :cond_3b

    .line 1354
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v17, v1

    goto :goto_24

    :cond_3b
    move/from16 v17, v6

    :goto_24
    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v19, 0x4

    move-object v1, v10

    move-object v2, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v5

    move v5, v6

    move-object/from16 v6, v40

    move-object/from16 v43, v7

    move-object/from16 v42, v38

    move-object v7, v8

    move-object/from16 v22, v39

    move/from16 v8, v17

    move-object/from16 v17, v9

    move/from16 v9, v19

    .line 1356
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_25

    :cond_3c
    move-object/from16 v43, v3

    move-object/from16 v17, v9

    move-object/from16 v42, v38

    move-object/from16 v22, v39

    :goto_25
    move-object/from16 v1, v17

    move-object/from16 v9, v22

    move-object/from16 v7, v42

    move-object/from16 v3, v43

    goto/16 :goto_1d

    :cond_3d
    move-object/from16 v50, v13

    move-object v13, v3

    goto/16 :goto_2f

    :cond_3e
    move-object/from16 v43, v3

    move-object/from16 v42, v7

    if-eqz v21, :cond_4b

    if-eqz v12, :cond_4b

    move-object v1, v12

    move-object v9, v1

    :goto_26
    if-eqz v9, :cond_48

    .line 1369
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v11

    if-eq v9, v12, :cond_47

    move-object/from16 v8, v43

    if-eq v9, v8, :cond_46

    if-eqz v2, :cond_46

    if-ne v2, v8, :cond_3f

    move-object/from16 v7, v16

    goto :goto_27

    :cond_3f
    move-object v7, v2

    .line 1374
    :goto_27
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v15

    .line 1375
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1377
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1381
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 1382
    iget-object v6, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    if-eqz v7, :cond_41

    move-object/from16 v44, v8

    .line 1385
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v15

    move-object/from16 v45, v7

    .line 1386
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v46, v7

    .line 1387
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_40

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_29

    :cond_40
    move-object/from16 v7, v16

    goto :goto_29

    :cond_41
    move-object/from16 v45, v7

    move-object/from16 v44, v8

    .line 1389
    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v5

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_42

    .line 1391
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v47, v7

    goto :goto_28

    :cond_42
    move-object/from16 v47, v16

    .line 1393
    :goto_28
    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v5

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v46, v47

    :goto_29
    if-eqz v8, :cond_43

    .line 1397
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v6, v8

    :cond_43
    move v8, v6

    if-eqz v1, :cond_44

    .line 1400
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v2, v1

    :cond_44
    move v5, v2

    if-eqz v3, :cond_45

    if-eqz v4, :cond_45

    if-eqz v46, :cond_45

    if-eqz v7, :cond_45

    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v17, 0x4

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v46

    move-object/from16 v19, v45

    move-object/from16 v48, v44

    move-object/from16 v22, v9

    const/4 v11, 0x5

    move/from16 v9, v17

    .line 1403
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2a

    :cond_45
    move-object/from16 v22, v9

    move-object/from16 v48, v44

    move-object/from16 v19, v45

    const/4 v11, 0x5

    :goto_2a
    move-object/from16 v9, v19

    goto :goto_2c

    :cond_46
    move-object/from16 v48, v8

    move-object/from16 v22, v9

    goto :goto_2b

    :cond_47
    move-object/from16 v22, v9

    move-object/from16 v48, v43

    :goto_2b
    const/4 v11, 0x5

    move-object v9, v2

    :goto_2c
    move-object/from16 v1, v22

    move-object/from16 v43, v48

    move/from16 v11, p2

    goto/16 :goto_26

    :cond_48
    move-object/from16 v48, v43

    const/4 v11, 0x5

    .line 1411
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    move-object/from16 v2, v42

    .line 1412
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v15

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v48

    .line 1413
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v15, 0x1

    aget-object v8, v3, v4

    .line 1414
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v4

    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_4a

    if-eq v12, v9, :cond_49

    .line 1417
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v10, v3, v2, v1, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_2d

    :cond_49
    if-eqz v7, :cond_4a

    .line 1419
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 1420
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x5

    move-object/from16 v22, v1

    move-object v1, v10

    move-object/from16 v23, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v23

    move-object v11, v7

    move-object/from16 v7, v22

    move-object/from16 v49, v8

    move/from16 v8, v17

    move-object/from16 v50, v13

    move-object v13, v9

    move/from16 v9, v19

    .line 1419
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2e

    :cond_4a
    :goto_2d
    move-object v11, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v13

    move-object v13, v9

    :goto_2e
    if-eqz v11, :cond_4c

    if-eq v12, v13, :cond_4c

    move-object/from16 v1, v49

    .line 1424
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/4 v4, 0x5

    invoke-virtual {v10, v2, v3, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_2f

    :cond_4b
    move-object/from16 v50, v13

    move-object/from16 v13, v43

    :cond_4c
    :goto_2f
    move-object v6, v13

    :goto_30
    if-nez v20, :cond_4d

    if-eqz v21, :cond_52

    :cond_4d
    if-eqz v12, :cond_52

    .line 1431
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    .line 1432
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v15, 0x1

    aget-object v2, v2, v3

    .line 1433
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_4e

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_31

    :cond_4e
    move-object/from16 v4, v16

    .line 1434
    :goto_31
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_4f

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v5

    :cond_4f
    if-ne v12, v6, :cond_50

    .line 1436
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v15

    .line 1437
    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    :cond_50
    if-eqz v4, :cond_52

    if-eqz v16, :cond_52

    .line 1441
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    if-nez v6, :cond_51

    move-object/from16 v6, v50

    .line 1446
    :cond_51
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v6, v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 1447
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v9, 0x5

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_52
    :goto_32
    add-int/lit8 v8, v0, 0x1

    move/from16 v9, v18

    move-object/from16 v0, p0

    move/from16 v11, p2

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_53
    return-void
.end method


# virtual methods
.method public final didResolve()V
    .locals 2

    const/4 v0, 0x1

    .line 2063
    iput v0, p0, Landroid/support/constraint/solver/widgets/Chain;->state:I

    .line 2070
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Chain;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/Chain;

    .line 2071
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Chain;->resolve()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 3023
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Chain;->headerManagerProvider:Ljavax/inject/Provider;

    .line 3024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    invoke-static {v0}, Lru/rocketbank/core/dagger/RetrofitModule;->provideRetrofitAdapterNoAuth(Lru/rocketbank/core/manager/HeaderManager;)Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 3048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3023
    :cond_0
    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    const/4 v0, 0x0

    .line 2047
    iput v0, p0, Landroid/support/constraint/solver/widgets/Chain;->state:I

    .line 2048
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Chain;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/Chain;

    .line 2049
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Chain;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isResolved()Z
    .locals 2

    .line 2076
    iget v0, p0, Landroid/support/constraint/solver/widgets/Chain;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2042
    iput v0, p0, Landroid/support/constraint/solver/widgets/Chain;->state:I

    .line 2043
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Chain;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
