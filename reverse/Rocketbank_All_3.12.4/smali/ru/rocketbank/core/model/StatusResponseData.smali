.class public final Lru/rocketbank/core/model/StatusResponseData;
.super Ljava/lang/Object;
.source "StatusResponseData1.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lru/rocketbank/core/events/EventHelper$IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/StatusResponseData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusResponseData1.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusResponseData1.kt\nru/rocketbank/core/model/StatusResponseData\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,75:1\n7#2,4:76\n*E\n*S KotlinDebug\n*F\n+ 1 StatusResponseData1.kt\nru/rocketbank/core/model/StatusResponseData\n*L\n70#1,4:76\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/StatusResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/StatusResponseData$Companion;


# instance fields
.field private delivery:Lru/rocketbank/core/model/DeliveryData;

.field private deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivery_scheduled"
    .end annotation
.end field

.field private documentCheck:Lru/rocketbank/core/network/model/leads/Document;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_check"
    .end annotation
.end field

.field private documentRejected:Lru/rocketbank/core/network/model/leads/Document;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_rejected"
    .end annotation
.end field

.field private form:Lru/rocketbank/core/model/FormData;

.field private go:Lru/rocketbank/core/model/StatusResponseSubData;

.field private password:Lru/rocketbank/core/model/StatusResponseSubData;

.field private pin:Lru/rocketbank/core/model/dto/ChangePin;

.field private pusherToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pusher_token"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "status"
        }
        value = "sexy_api_status"
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/StatusResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/StatusResponseData$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/StatusResponseData;->Companion:Lru/rocketbank/core/model/StatusResponseData$Companion;

    .line 76
    new-instance v0, Lru/rocketbank/core/model/StatusResponseData$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/StatusResponseData$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 79
    sput-object v0, Lru/rocketbank/core/model/StatusResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lru/rocketbank/core/model/dto/ChangePin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/ChangePin;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->status:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pusherToken:Ljava/lang/String;

    .line 41
    const-class v0, Lru/rocketbank/core/model/FormData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/FormData;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->form:Lru/rocketbank/core/model/FormData;

    .line 42
    const-class v0, Lru/rocketbank/core/model/DeliveryScheduledData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/DeliveryScheduledData;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    .line 43
    const-class v0, Lru/rocketbank/core/model/StatusResponseSubData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/StatusResponseSubData;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    .line 44
    const-class v0, Lru/rocketbank/core/model/StatusResponseSubData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/StatusResponseSubData;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    .line 45
    const-class v0, Lru/rocketbank/core/network/model/leads/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/leads/Document;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    .line 46
    const-class v0, Lru/rocketbank/core/network/model/leads/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/leads/Document;

    iput-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`in`.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDelivery()Lru/rocketbank/core/model/DeliveryData;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-object v0
.end method

.method public final getDeliveryScheduled()Lru/rocketbank/core/model/DeliveryScheduledData;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-object v0
.end method

.method public final getDocumentCheck()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final getDocumentRejected()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final getForm()Lru/rocketbank/core/model/FormData;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->form:Lru/rocketbank/core/model/FormData;

    return-object v0
.end method

.method public final getGo()Lru/rocketbank/core/model/StatusResponseSubData;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    return-object v0
.end method

.method public final getPassword()Lru/rocketbank/core/model/StatusResponseSubData;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    return-object v0
.end method

.method public final getPin()Lru/rocketbank/core/model/dto/ChangePin;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object v0
.end method

.method public final getPusherToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pusherToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setDelivery(Lru/rocketbank/core/model/DeliveryData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-void
.end method

.method public final setDeliveryScheduled(Lru/rocketbank/core/model/DeliveryScheduledData;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-void
.end method

.method public final setDocumentCheck(Lru/rocketbank/core/network/model/leads/Document;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    return-void
.end method

.method public final setDocumentRejected(Lru/rocketbank/core/network/model/leads/Document;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    return-void
.end method

.method public final setForm(Lru/rocketbank/core/model/FormData;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->form:Lru/rocketbank/core/model/FormData;

    return-void
.end method

.method public final setGo(Lru/rocketbank/core/model/StatusResponseSubData;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    return-void
.end method

.method public final setPassword(Lru/rocketbank/core/model/StatusResponseSubData;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    return-void
.end method

.method public final setPin(Lru/rocketbank/core/model/dto/ChangePin;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    return-void
.end method

.method public final setPusherToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->pusherToken:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->pusherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->form:Lru/rocketbank/core/model/FormData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseData;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    iget-object p2, p0, Lru/rocketbank/core/model/StatusResponseData;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
