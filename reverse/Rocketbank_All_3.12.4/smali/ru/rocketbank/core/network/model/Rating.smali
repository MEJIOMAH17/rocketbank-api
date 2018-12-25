.class public final Lru/rocketbank/core/network/model/Rating;
.super Ljava/lang/Object;
.source "Rating.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/Rating$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRating.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rating.kt\nru/rocketbank/core/network/model/Rating\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,42:1\n7#2,4:43\n*E\n*S KotlinDebug\n*F\n+ 1 Rating.kt\nru/rocketbank/core/network/model/Rating\n*L\n38#1,4:43\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/Rating$Companion;


# instance fields
.field private comment:Ljava/lang/String;

.field private permalink:Ljava/lang/String;

.field private rate:F

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/Rating$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/Rating$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/Rating;->Companion:Lru/rocketbank/core/network/model/Rating$Companion;

    .line 43
    new-instance v0, Lru/rocketbank/core/network/model/Rating$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/Rating$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 46
    sput-object v0, Lru/rocketbank/core/network/model/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/network/model/Rating;->comment:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lru/rocketbank/core/network/model/Rating;->permalink:Ljava/lang/String;

    .line 16
    iput p1, p0, Lru/rocketbank/core/network/model/Rating;->rate:F

    .line 17
    iput-object p4, p0, Lru/rocketbank/core/network/model/Rating;->text:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/network/model/Rating;->rate:F

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Rating;->comment:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Rating;->permalink:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/Rating;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/Rating;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/Rating;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()F
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/network/model/Rating;->rate:F

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/Rating;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/network/model/Rating;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/network/model/Rating;->permalink:Ljava/lang/String;

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/network/model/Rating;->rate:F

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/network/model/Rating;->text:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lru/rocketbank/core/network/model/Rating;->rate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 31
    iget-object p2, p0, Lru/rocketbank/core/network/model/Rating;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lru/rocketbank/core/network/model/Rating;->permalink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lru/rocketbank/core/network/model/Rating;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
