.class public final Lru/rocketbank/core/model/DeliveryOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "DeliveryOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/DeliveryOperation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryOperation.kt\nru/rocketbank/core/model/DeliveryOperation\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,44:1\n7#2,4:45\n*E\n*S KotlinDebug\n*F\n+ 1 DeliveryOperation.kt\nru/rocketbank/core/model/DeliveryOperation\n*L\n41#1,4:45\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/DeliveryOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/DeliveryOperation$Companion;


# instance fields
.field private buttonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_text"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/DeliveryOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/DeliveryOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/DeliveryOperation;->Companion:Lru/rocketbank/core/model/DeliveryOperation$Companion;

    .line 45
    new-instance v0, Lru/rocketbank/core/model/DeliveryOperation$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/DeliveryOperation$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 48
    sput-object v0, Lru/rocketbank/core/model/DeliveryOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->token:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->status:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->text:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->buttonText:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->token:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->buttonText:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->status:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->imageUrl:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "parcel.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryOperation;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->status:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->text:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryOperation;->token:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_0

    .line 31
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryOperation;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryOperation;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryOperation;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryOperation;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryOperation;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
