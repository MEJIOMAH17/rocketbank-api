.class public Lru/rocketbank/core/model/AbstractOperation;
.super Ljava/lang/Object;
.source "AbstractOperation.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/AbstractOperation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lru/rocketbank/core/model/AbstractOperation;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractOperation.kt\nru/rocketbank/core/model/AbstractOperation\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,85:1\n7#2,4:86\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractOperation.kt\nru/rocketbank/core/model/AbstractOperation\n*L\n83#1,4:86\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/AbstractOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/AbstractOperation$Companion;


# instance fields
.field private calendarInstance:Ljava/util/Calendar;

.field private happenedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "happened_at"
    .end annotation
.end field

.field private id:J

.field private isVisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/AbstractOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/AbstractOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/AbstractOperation;->Companion:Lru/rocketbank/core/model/AbstractOperation$Companion;

    .line 86
    new-instance v0, Lru/rocketbank/core/model/AbstractOperation$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/AbstractOperation$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 89
    sput-object v0, Lru/rocketbank/core/model/AbstractOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    return-void
.end method

.method private final createNewCalendar()Ljava/util/Calendar;
    .locals 5

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/AbstractOperation;->calendarInstance:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/model/AbstractOperation;->calendarInstance:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0

    .line 54
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "calendar"

    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    iput-object v0, p0, Lru/rocketbank/core/model/AbstractOperation;->calendarInstance:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;->compareTo(Lru/rocketbank/core/model/AbstractOperation;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lru/rocketbank/core/model/AbstractOperation;)I
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    iget-wide v2, p1, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    sub-long v4, v0, v2

    long-to-int p1, v4

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 31
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/AbstractOperation;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 35
    :cond_0
    instance-of v0, p1, Lru/rocketbank/core/model/AbstractOperation;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 36
    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    iget-wide v3, p1, Lru/rocketbank/core/model/AbstractOperation;->id:J

    iget-wide v5, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public final getCalendarInstance()Ljava/util/Calendar;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/AbstractOperation;->calendarInstance:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getHappenedAt()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    return-wide v0
.end method

.method public final getHappenedAtCalendar()Ljava/util/Calendar;
    .locals 1

    .line 61
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;->createNewCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    return v0
.end method

.method public final setCalendarInstance(Ljava/util/Calendar;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/model/AbstractOperation;->calendarInstance:Ljava/util/Calendar;

    return-void
.end method

.method public final setHappenedAt(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    return-void
.end method

.method public final setId(I)V
    .locals 2

    int-to-long v0, p1

    .line 68
    iput-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    iget-boolean p2, p0, Lru/rocketbank/core/model/AbstractOperation;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->happenedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lru/rocketbank/core/model/AbstractOperation;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    return-void
.end method
