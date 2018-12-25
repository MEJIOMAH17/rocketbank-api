.class public final Lru/rocketbank/core/network/model/ContextShopItem;
.super Ljava/lang/Object;
.source "ContextResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/ContextShopItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextResponse.kt\nru/rocketbank/core/network/model/ContextShopItem\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,47:1\n7#2,4:48\n*E\n*S KotlinDebug\n*F\n+ 1 ContextResponse.kt\nru/rocketbank/core/network/model/ContextShopItem\n*L\n44#1,4:48\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/ContextShopItem$Companion;


# instance fields
.field private final count:I

.field private final id:J

.field private final image_url:Ljava/lang/String;

.field private final price:D

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/ContextShopItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/ContextShopItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/ContextShopItem;->Companion:Lru/rocketbank/core/network/model/ContextShopItem$Companion;

    .line 48
    new-instance v0, Lru/rocketbank/core/network/model/ContextShopItem$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/ContextShopItem$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 51
    sput-object v0, Lru/rocketbank/core/network/model/ContextShopItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lru/rocketbank/core/network/model/ContextShopItem;-><init>(JDILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(JDILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    iput-wide p3, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    iput p5, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    iput-object p6, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    iput-object p7, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JDILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 11

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide v6, p3

    :goto_1
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, p8, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    move-object v3, p0

    .line 20
    invoke-direct/range {v3 .. v10}, Lru/rocketbank/core/network/model/ContextShopItem;-><init>(JDILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 23
    invoke-direct/range {v1 .. v8}, Lru/rocketbank/core/network/model/ContextShopItem;-><init>(JDILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/ContextShopItem;JDILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/network/model/ContextShopItem;
    .locals 9

    move-object v0, p0

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v6, p8, 0x4

    if-eqz v6, :cond_2

    iget v6, v0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, p6

    :goto_3
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_4

    iget-object v1, v0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lru/rocketbank/core/network/model/ContextShopItem;->copy(JDILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/network/model/ContextShopItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JDILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/network/model/ContextShopItem;
    .locals 9

    new-instance v8, Lru/rocketbank/core/network/model/ContextShopItem;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lru/rocketbank/core/network/model/ContextShopItem;-><init>(JDILjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/core/network/model/ContextShopItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/core/network/model/ContextShopItem;

    iget-wide v3, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    iget-wide v5, p1, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    iget-wide v5, p1, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    iget v3, p1, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 18
    iget v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    return-wide v0
.end method

.method public final getImage_url()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long v5, v0, v3

    long-to-int v0, v5

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v1, v3, v2

    xor-long v5, v3, v1

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextShopItem(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    iget-wide v0, p0, Lru/rocketbank/core/network/model/ContextShopItem;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    if-eqz p1, :cond_2

    .line 35
    iget p2, p0, Lru/rocketbank/core/network/model/ContextShopItem;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 36
    iget-object p2, p0, Lru/rocketbank/core/network/model/ContextShopItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 37
    iget-object p2, p0, Lru/rocketbank/core/network/model/ContextShopItem;->image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method
