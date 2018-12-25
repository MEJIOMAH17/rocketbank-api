.class public final Lru/rocketbank/core/model/SexyStatusResponse;
.super Ljava/lang/Object;
.source "StatusResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lru/rocketbank/core/events/EventHelper$IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/SexyStatusResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusResponseData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusResponseData.kt\nru/rocketbank/core/model/SexyStatusResponse\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,56:1\n7#2,4:57\n*E\n*S KotlinDebug\n*F\n+ 1 StatusResponseData.kt\nru/rocketbank/core/model/SexyStatusResponse\n*L\n52#1,4:57\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/SexyStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/SexyStatusResponse$Companion;


# instance fields
.field private delivery:Lru/rocketbank/core/model/DeliveryData;

.field private deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivery_scheduled"
    .end annotation
.end field

.field private go:Lru/rocketbank/core/model/StatusResponseSubData;

.field private password:Lru/rocketbank/core/model/StatusResponseSubData;

.field private pusherToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pusher_token"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/SexyStatusResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/SexyStatusResponse$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/SexyStatusResponse;->Companion:Lru/rocketbank/core/model/SexyStatusResponse$Companion;

    .line 57
    new-instance v0, Lru/rocketbank/core/model/SexyStatusResponse$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/SexyStatusResponse$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 60
    sput-object v0, Lru/rocketbank/core/model/SexyStatusResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->pusherToken:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->token:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->status:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->pusherToken:Ljava/lang/String;

    .line 28
    const-class v0, Lru/rocketbank/core/model/DeliveryScheduledData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/DeliveryScheduledData;

    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    .line 29
    const-class v0, Lru/rocketbank/core/model/StatusResponseSubData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/StatusResponseSubData;

    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    .line 30
    const-class v0, Lru/rocketbank/core/model/StatusResponseSubData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/StatusResponseSubData;

    iput-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`in`.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->token:Ljava/lang/String;

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

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-object v0
.end method

.method public final getDeliveryScheduled()Lru/rocketbank/core/model/DeliveryScheduledData;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-object v0
.end method

.method public final getGo()Lru/rocketbank/core/model/StatusResponseSubData;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    return-object v0
.end method

.method public final getPassword()Lru/rocketbank/core/model/StatusResponseSubData;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    return-object v0
.end method

.method public final getPusherToken()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->pusherToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final setDelivery(Lru/rocketbank/core/model/DeliveryData;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-void
.end method

.method public final setDeliveryScheduled(Lru/rocketbank/core/model/DeliveryScheduledData;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    return-void
.end method

.method public final setGo(Lru/rocketbank/core/model/StatusResponseSubData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    return-void
.end method

.method public final setPassword(Lru/rocketbank/core/model/StatusResponseSubData;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    return-void
.end method

.method public final setPusherToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->pusherToken:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/SexyStatusResponse;->user:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->pusherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledData;

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->go:Lru/rocketbank/core/model/StatusResponseSubData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/SexyStatusResponse;->password:Lru/rocketbank/core/model/StatusResponseSubData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/model/SexyStatusResponse;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
