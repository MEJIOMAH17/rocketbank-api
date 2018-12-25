.class public final Lru/rocketbank/core/model/RocketDepositModel;
.super Ljava/lang/Object;
.source "RocketDepositModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/RocketDepositModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketDepositModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketDepositModel.kt\nru/rocketbank/core/model/RocketDepositModel\n*L\n1#1,153:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/RocketDepositModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/RocketDepositModel$Companion;


# instance fields
.field private bank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank"
    .end annotation
.end field

.field private capitalization:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization"
    .end annotation
.end field

.field private colorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field private final colorValue$delegate:Lkotlin/Lazy;

.field private currency:Ljava/lang/String;

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private maxAmount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_amount"
    .end annotation
.end field

.field private minAmount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_amount"
    .end annotation
.end field

.field private needAgent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "need_agent"
    .end annotation
.end field

.field private percent:Ljava/lang/Double;

.field private period:I

.field private periodText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period_text"
    .end annotation
.end field

.field private periods:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "periods"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private permalink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permalink"
    .end annotation
.end field

.field private rate:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate"
    .end annotation
.end field

.field private refill:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill"
    .end annotation
.end field

.field private refillMinLimit:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill_min_limit"
    .end annotation
.end field

.field private rrRate:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill_rate"
    .end annotation
.end field

.field private smallImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small_image_url"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/RocketDepositModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "colorValue"

    const-string v4, "getColorValue()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/model/RocketDepositModel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/core/model/RocketDepositModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/RocketDepositModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/RocketDepositModel;->Companion:Lru/rocketbank/core/model/RocketDepositModel$Companion;

    .line 143
    new-instance v0, Lru/rocketbank/core/model/RocketDepositModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/RocketDepositModel$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/RocketDepositModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;-><init>(Lru/rocketbank/core/model/RocketDepositModel;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorValue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;-><init>(Lru/rocketbank/core/model/RocketDepositModel;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorValue$delegate:Lkotlin/Lazy;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->capitalization:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->needAgent:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lru/rocketbank/core/model/RocketDepositModel;->refill:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->maxAmount:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->minAmount:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->rate:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->refillMinLimit:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->rrRate:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->bank:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorString:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->icon:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->imageUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->smallImageUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->url:Ljava/lang/String;

    .line 87
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->percent:Ljava/lang/Double;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 116
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/RocketDepositModel;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_0
    instance-of v0, p1, Lru/rocketbank/core/model/RocketDepositModel;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lru/rocketbank/core/model/RocketDepositModel;

    iget-object p1, p1, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalization()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->capitalization:Z

    return v0
.end method

.method public final getColorString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorString:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorValue()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorValue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAmount()F
    .locals 1

    .line 22
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->maxAmount:F

    return v0
.end method

.method public final getMinAmount()F
    .locals 1

    .line 25
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->minAmount:F

    return v0
.end method

.method public final getNeedAgent()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->needAgent:Z

    return v0
.end method

.method public final getPercent()Ljava/lang/Double;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->percent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPeriod()I
    .locals 1

    .line 30
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->period:I

    return v0
.end method

.method public final getPeriodText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->periodText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->periods:Ljava/util/List;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()F
    .locals 1

    .line 28
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->rate:F

    return v0
.end method

.method public final getRefill()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->refill:Z

    return v0
.end method

.method public final getRefillMinLimit()F
    .locals 1

    .line 36
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->refillMinLimit:F

    return v0
.end method

.method public final getRrRate()F
    .locals 1

    .line 39
    iget v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->rrRate:F

    return v0
.end method

.method public final getSmallImageUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->smallImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 128
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final parseColor()I
    .locals 2

    .line 138
    sget-object v0, Lru/rocketbank/core/model/ModelTools;->INSTANCE:Lru/rocketbank/core/model/ModelTools;

    iget-object v1, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorString:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/ModelTools;->formatColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final setBank(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->bank:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalization(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->capitalization:Z

    return-void
.end method

.method public final setColorString(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorString:Ljava/lang/String;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAmount(F)V
    .locals 0

    .line 22
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->maxAmount:F

    return-void
.end method

.method public final setMinAmount(F)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->minAmount:F

    return-void
.end method

.method public final setNeedAgent(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->needAgent:Z

    return-void
.end method

.method public final setPercent(Ljava/lang/Double;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->percent:Ljava/lang/Double;

    return-void
.end method

.method public final setPeriod(I)V
    .locals 0

    .line 30
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->period:I

    return-void
.end method

.method public final setPeriodText(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->periodText:Ljava/lang/String;

    return-void
.end method

.method public final setPeriods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->periods:Ljava/util/List;

    return-void
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    .line 28
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->rate:F

    return-void
.end method

.method public final setRefill(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->refill:Z

    return-void
.end method

.method public final setRefillMinLimit(F)V
    .locals 0

    .line 36
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->refillMinLimit:F

    return-void
.end method

.method public final setRrRate(F)V
    .locals 0

    .line 39
    iput p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->rrRate:F

    return-void
.end method

.method public final setSmallImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->smallImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-boolean p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->capitalization:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->needAgent:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-boolean p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->refill:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->maxAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->minAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    iget p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->rate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    iget p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->refillMinLimit:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    iget p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->rrRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->bank:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->colorString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->permalink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->smallImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->percent:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 108
    iget-object p2, p0, Lru/rocketbank/core/model/RocketDepositModel;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
