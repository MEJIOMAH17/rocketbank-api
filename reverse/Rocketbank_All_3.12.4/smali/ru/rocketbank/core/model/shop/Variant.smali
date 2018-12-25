.class public final Lru/rocketbank/core/model/shop/Variant;
.super Ljava/lang/Object;
.source "Variant.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/Variant$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/shop/Variant$Companion;


# instance fields
.field private final available:Z

.field private final color:Ljava/lang/String;

.field private final id:J

.field private final position:I

.field private final size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/shop/Variant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/shop/Variant$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/shop/Variant;->Companion:Lru/rocketbank/core/model/shop/Variant$Companion;

    .line 12
    new-instance v0, Lru/rocketbank/core/model/shop/Variant$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/shop/Variant$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/shop/Variant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    iput p3, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    iput-object p4, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    iput-boolean p6, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1

    const/4 p6, 0x1

    :cond_1
    move v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/model/shop/Variant;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/model/shop/Variant;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/shop/Variant;JILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lru/rocketbank/core/model/shop/Variant;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget p3, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    :cond_1
    move v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-boolean p6, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    :cond_4
    move v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lru/rocketbank/core/model/shop/Variant;->copy(JILjava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/core/model/shop/Variant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    return v0
.end method

.method public final copy(JILjava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/core/model/shop/Variant;
    .locals 8

    new-instance v7, Lru/rocketbank/core/model/shop/Variant;

    move-object v0, v7

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/model/shop/Variant;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lru/rocketbank/core/model/shop/Variant;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lru/rocketbank/core/model/shop/Variant;

    iget-wide v3, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    iget-wide v5, p1, Lru/rocketbank/core/model/shop/Variant;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    iget v3, p1, Lru/rocketbank/core/model/shop/Variant;->position:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    iget-boolean p1, p1, Lru/rocketbank/core/model/shop/Variant;->available:Z

    if-ne v1, p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public final getAvailable()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    return-wide v0
.end method

.method public final getPosition()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    return v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

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

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Variant(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/Variant;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    if-eqz p1, :cond_1

    .line 24
    iget p2, p0, Lru/rocketbank/core/model/shop/Variant;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 25
    iget-object p2, p0, Lru/rocketbank/core/model/shop/Variant;->size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 26
    iget-object p2, p0, Lru/rocketbank/core/model/shop/Variant;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 27
    iget-boolean p2, p0, Lru/rocketbank/core/model/shop/Variant;->available:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_4
    return-void
.end method
