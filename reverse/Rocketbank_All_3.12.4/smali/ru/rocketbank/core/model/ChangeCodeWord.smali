.class public final Lru/rocketbank/core/model/ChangeCodeWord;
.super Ljava/lang/Object;
.source "ChangeCodeWord.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/ChangeCodeWord$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeCodeWord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeCodeWord.kt\nru/rocketbank/core/model/ChangeCodeWord\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,34:1\n7#2,4:35\n*E\n*S KotlinDebug\n*F\n+ 1 ChangeCodeWord.kt\nru/rocketbank/core/model/ChangeCodeWord\n*L\n31#1,4:35\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/ChangeCodeWord;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/ChangeCodeWord$Companion;


# instance fields
.field private final checkCard:Lru/rocketbank/core/model/dto/CheckCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_card"
    .end annotation
.end field

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/ChangeCodeWord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/ChangeCodeWord$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/ChangeCodeWord;->Companion:Lru/rocketbank/core/model/ChangeCodeWord$Companion;

    .line 35
    new-instance v0, Lru/rocketbank/core/model/ChangeCodeWord$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/ChangeCodeWord$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 38
    sput-object v0, Lru/rocketbank/core/model/ChangeCodeWord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lru/rocketbank/core/model/ChangeCodeWord;-><init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 16
    const-class v0, Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/model/dto/CheckCardData;

    .line 15
    :cond_1
    invoke-direct {p0, v1, v0}, Lru/rocketbank/core/model/ChangeCodeWord;-><init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;ILkotlin/jvm/internal/Ref;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/model/ChangeCodeWord;-><init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/ChangeCodeWord;Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;ILjava/lang/Object;)Lru/rocketbank/core/model/ChangeCodeWord;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/model/ChangeCodeWord;->copy(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/core/model/ChangeCodeWord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lru/rocketbank/core/model/dto/CheckCardData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/core/model/ChangeCodeWord;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/ChangeCodeWord;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/model/ChangeCodeWord;-><init>(Ljava/lang/String;Lru/rocketbank/core/model/dto/CheckCardData;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/ChangeCodeWord;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/ChangeCodeWord;

    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    iget-object p1, p1, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

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

.method public final getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeCodeWord(text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/ChangeCodeWord;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_1
    return-void
.end method
