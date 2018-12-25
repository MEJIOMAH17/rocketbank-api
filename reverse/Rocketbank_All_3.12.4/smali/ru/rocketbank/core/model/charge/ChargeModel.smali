.class public final Lru/rocketbank/core/model/charge/ChargeModel;
.super Ljava/lang/Object;
.source "ChargeModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/charge/ChargeModel$Requisites;,
        Lru/rocketbank/core/model/charge/ChargeModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargeModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeModel.kt\nru/rocketbank/core/model/charge/ChargeModel\n*L\n1#1,121:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/charge/ChargeModel$Companion;

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final discount_amount:Ljava/lang/Double;

.field private final discount_date:Ljava/lang/String;

.field private final discount_size:Ljava/lang/Double;

.field private final document:Ljava/lang/String;

.field private final document_number:Ljava/lang/String;

.field private final id:Ljava/lang/Integer;

.field private final requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

.field private final warning:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/rocketbank/core/model/charge/ChargeModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/charge/ChargeModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeModel;->Companion:Lru/rocketbank/core/model/charge/ChargeModel$Companion;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeModel;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Lru/rocketbank/core/model/charge/ChargeModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    const-class v0, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lru/rocketbank/core/model/charge/ChargeModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    iput-object p5, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    iput-object p6, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    iput-object p7, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    iput-object p8, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    return-void
.end method

.method public static final synthetic access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lru/rocketbank/core/model/charge/ChargeModel;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/charge/ChargeModel;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;ILjava/lang/Object;)Lru/rocketbank/core/model/charge/ChargeModel;
    .locals 10

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-object v9, v1

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lru/rocketbank/core/model/charge/ChargeModel;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;)Lru/rocketbank/core/model/charge/ChargeModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    return-object v0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;)Lru/rocketbank/core/model/charge/ChargeModel;
    .locals 10

    new-instance v9, Lru/rocketbank/core/model/charge/ChargeModel;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lru/rocketbank/core/model/charge/ChargeModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeModel$Requisites;)V

    return-object v9
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/charge/ChargeModel;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/charge/ChargeModel;

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    iget-object p1, p1, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

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

.method public final getDiscount_amount()Ljava/lang/Double;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getDiscount_date()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscount_date_calendar()Ljava/util/Calendar;
    .locals 3

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeModel;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDiscount_size()Ljava/lang/Double;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    return-object v0
.end method

.method public final getDocument()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    return-object v0
.end method

.method public final getDocument_number()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    return-object v0
.end method

.method public final getDocument_type()Lru/rocketbank/core/model/charge/DocumentType;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/model/charge/DocumentType;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/charge/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    return-object v0
.end method

.method public final getWarning()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChargeModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", document="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", document_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discount_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", discount_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", discount_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", warning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requisites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 102
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->id:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 103
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 104
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->document_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 105
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_size:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 106
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_amount:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 107
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->discount_date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 108
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->warning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 109
    iget-object p2, p0, Lru/rocketbank/core/model/charge/ChargeModel;->requisites:Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_8
    return-void
.end method
