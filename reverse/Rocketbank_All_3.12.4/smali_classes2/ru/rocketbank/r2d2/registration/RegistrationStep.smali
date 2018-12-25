.class public final Lru/rocketbank/r2d2/registration/RegistrationStep;
.super Ljava/lang/Object;
.source "RegistrationStep.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lru/rocketbank/core/events/EventHelper$IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/RegistrationStep$Step;,
        Lru/rocketbank/r2d2/registration/RegistrationStep$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistrationStep.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrationStep.kt\nru/rocketbank/r2d2/registration/RegistrationStep\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,67:1\n7#2,4:68\n*E\n*S KotlinDebug\n*F\n+ 1 RegistrationStep.kt\nru/rocketbank/r2d2/registration/RegistrationStep\n*L\n64#1,4:68\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/r2d2/registration/RegistrationStep;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/r2d2/registration/RegistrationStep$Companion;


# instance fields
.field private passportPageId:I

.field private registrationPageId:I

.field private statusResponseData:Lru/rocketbank/core/model/StatusResponseData;

.field private step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/RegistrationStep$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/RegistrationStep$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/RegistrationStep;->Companion:Lru/rocketbank/r2d2/registration/RegistrationStep$Companion;

    .line 68
    new-instance v0, Lru/rocketbank/r2d2/registration/RegistrationStep$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/RegistrationStep$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 71
    sput-object v0, Lru/rocketbank/r2d2/registration/RegistrationStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lru/rocketbank/core/model/StatusResponseData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/StatusResponseData;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->statusResponseData:Lru/rocketbank/core/model/StatusResponseData;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->values()[Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->passportPageId:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->registrationPageId:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPassportPageId()I
    .locals 1

    .line 18
    iget v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->passportPageId:I

    return v0
.end method

.method public final getRegistrationPageId()I
    .locals 1

    .line 19
    iget v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->registrationPageId:I

    return v0
.end method

.method public final getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->statusResponseData:Lru/rocketbank/core/model/StatusResponseData;

    return-object v0
.end method

.method public final getStep()Lru/rocketbank/r2d2/registration/RegistrationStep$Step;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    return-object v0
.end method

.method public final setPassportPageId(I)V
    .locals 0

    .line 18
    iput p1, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->passportPageId:I

    return-void
.end method

.method public final setRegistrationPageId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->registrationPageId:I

    return-void
.end method

.method public final setStatusResponseData(Lru/rocketbank/core/model/StatusResponseData;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->statusResponseData:Lru/rocketbank/core/model/StatusResponseData;

    return-void
.end method

.method public final setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->statusResponseData:Lru/rocketbank/core/model/StatusResponseData;

    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget-object p2, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->step:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p2}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->passportPageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p2, p0, Lru/rocketbank/r2d2/registration/RegistrationStep;->registrationPageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
