.class public final Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;
.super Ljava/lang/Object;
.source "DetailCardViewInputModel.kt"


# instance fields
.field private final androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

.field private final balance:Ljava/lang/String;

.field private final cardNumber:Ljava/lang/String;

.field private final cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

.field private final changePin:Lru/rocketbank/core/model/dto/ChangePin;

.field private final imageUrl:Ljava/lang/String;

.field private final sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

.field private final titleBalance:Ljava/lang/String;

.field private final titleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)V
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBalance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balance"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumber"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardParameters"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidPayParameters"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sPayParameters"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    iput-object p6, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    iput-object p7, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    iput-object p8, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    iput-object p9, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;ILjava/lang/Object;)Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;
    .locals 11

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    move-object v10, v1

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lru/rocketbank/core/model/dto/ChangePin;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object v0
.end method

.method public final component7()Lru/rocketbank/r2d2/root/card/binding/CardParameters;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    return-object v0
.end method

.method public final component8()Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    return-object v0
.end method

.method public final component9()Lru/rocketbank/r2d2/root/card/binding/SPayParameters;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;
    .locals 11

    const-string v0, "imageUrl"

    move-object v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBalance"

    move-object v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleName"

    move-object v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balance"

    move-object v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumber"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardParameters"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidPayParameters"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sPayParameters"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;

    move-object v1, v0

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAndroidPayParameters()Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    return-object v0
.end method

.method public final getBalance()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardParameters()Lru/rocketbank/r2d2/root/card/binding/CardParameters;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    return-object v0
.end method

.method public final getChangePin()Lru/rocketbank/core/model/dto/ChangePin;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSPayParameters()Lru/rocketbank/r2d2/root/card/binding/SPayParameters;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    return-object v0
.end method

.method public final getTitleBalance()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DetailCardViewInputModel(imageUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->balance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changePin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidPayParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sPayParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->sPayParameters:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
