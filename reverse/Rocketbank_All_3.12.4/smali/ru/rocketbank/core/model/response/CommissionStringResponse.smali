.class public final Lru/rocketbank/core/model/response/CommissionStringResponse;
.super Ljava/lang/Object;
.source "CommissionStringResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/response/CommissionStringResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommissionStringResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommissionStringResponse.kt\nru/rocketbank/core/model/response/CommissionStringResponse\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,36:1\n7#2,4:37\n*E\n*S KotlinDebug\n*F\n+ 1 CommissionStringResponse.kt\nru/rocketbank/core/model/response/CommissionStringResponse\n*L\n34#1,4:37\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/response/CommissionStringResponse$Companion;


# instance fields
.field private status:Ljava/lang/String;

.field private suggest:Lru/rocketbank/core/model/response/Suggest;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/response/CommissionStringResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/response/CommissionStringResponse$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/response/CommissionStringResponse;->Companion:Lru/rocketbank/core/model/response/CommissionStringResponse$Companion;

    .line 37
    new-instance v0, Lru/rocketbank/core/model/response/CommissionStringResponse$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/response/CommissionStringResponse$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 40
    sput-object v0, Lru/rocketbank/core/model/response/CommissionStringResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->status:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->text:Ljava/lang/String;

    .line 19
    const-class v0, Lru/rocketbank/core/model/response/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/response/Suggest;

    iput-object p1, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->suggest:Lru/rocketbank/core/model/response/Suggest;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggest()Lru/rocketbank/core/model/response/Suggest;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->suggest:Lru/rocketbank/core/model/response/Suggest;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public final setSuggest(Lru/rocketbank/core/model/response/Suggest;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->suggest:Lru/rocketbank/core/model/response/Suggest;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->text:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/response/CommissionStringResponse;->suggest:Lru/rocketbank/core/model/response/Suggest;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
