.class public final Lru/rocketbank/core/model/charge/ChargeModel$Requisites;
.super Ljava/lang/Object;
.source "ChargeModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/charge/ChargeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requisites"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargeModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeModel.kt\nru/rocketbank/core/model/charge/ChargeModel$Requisites\n*L\n1#1,121:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/charge/ChargeModel$Requisites;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion;


# instance fields
.field private final amount:Ljava/lang/Double;

.field private final bank_name:Ljava/lang/String;

.field private final bik:Ljava/lang/String;

.field private final bill_date:Ljava/lang/String;

.field private final corr_number:Ljava/lang/String;

.field private final drawer_status:Ljava/lang/String;

.field private final inn:Ljava/lang/String;

.field private final kbk:Ljava/lang/String;

.field private final kpp:Ljava/lang/String;

.field private final oktmo:Ljava/lang/String;

.field private final payer_name:Ljava/lang/String;

.field private final purpose:Ljava/lang/String;

.field private final recipient_name:Ljava/lang/String;

.field private final tax_basis:Ljava/lang/String;

.field private final tax_inn:Ljava/lang/String;

.field private final tax_period:Ljava/lang/String;

.field private final tax_period_kind:Ljava/lang/String;

.field private final treasure_branch:Ljava/lang/String;

.field private final uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->Companion:Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion;

    .line 90
    new-instance v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Double;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v21}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    move-object v1, p5

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/charge/ChargeModel$Requisites;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/model/charge/ChargeModel$Requisites;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 v20, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    move-object/from16 v21, v15

    iget-object v15, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    move-object/from16 v16, v15

    goto :goto_f

    :cond_f
    move-object/from16 v21, v15

    move-object/from16 v16, p16

    :goto_f
    const/high16 v15, 0x10000

    and-int/2addr v15, v1

    if-eqz v15, :cond_10

    iget-object v15, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    move-object/from16 v17, v15

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    move-object/from16 v18, v15

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v15, 0x40000

    and-int/2addr v1, v15

    if-eqz v1, :cond_12

    iget-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    move-object/from16 v19, v1

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v19}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/model/charge/ChargeModel$Requisites;
    .locals 21

    new-instance v20, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

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

.method public final getAmount()Ljava/lang/Double;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getBank_name()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getBik()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    return-object v0
.end method

.method public final getBill_date()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    return-object v0
.end method

.method public final getBill_date_calendar()Ljava/util/Calendar;
    .locals 3

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeModel;->Companion:Lru/rocketbank/core/model/charge/ChargeModel$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeModel$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCorr_number()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    return-object v0
.end method

.method public final getDrawer_status()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    return-object v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getKbk()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    return-object v0
.end method

.method public final getKpp()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    return-object v0
.end method

.method public final getOktmo()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayer_name()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient_name()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_basis()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_inn()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_period()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_period_kind()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getTreasure_branch()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    return-object v0
.end method

.method public final getUin()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    move v2, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    move v2, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    move v2, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requisites(bill_date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drawer_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", corr_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recipient_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bank_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kbk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oktmo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tax_basis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tax_period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tax_inn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tax_period_kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payer_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", treasure_branch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bill_date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->drawer_status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 70
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bik:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->amount:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 72
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->corr_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 73
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->inn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 74
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kpp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 75
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->purpose:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 76
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->recipient_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 77
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->bank_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_a

    .line 78
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->kbk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 79
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->uin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_c

    .line 80
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->oktmo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 81
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_basis:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_e

    .line 82
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 83
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_inn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_f
    if-eqz p1, :cond_10

    .line 84
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->tax_period_kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_10
    if-eqz p1, :cond_11

    .line 85
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->payer_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_11
    if-eqz p1, :cond_12

    .line 86
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->treasure_branch:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_12
    return-void
.end method
