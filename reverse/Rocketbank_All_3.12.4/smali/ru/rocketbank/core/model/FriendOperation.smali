.class public final Lru/rocketbank/core/model/FriendOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "FriendOperation.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/FriendOperation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendOperation.kt\nru/rocketbank/core/model/FriendOperation\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,47:1\n7#2,4:48\n*E\n*S KotlinDebug\n*F\n+ 1 FriendOperation.kt\nru/rocketbank/core/model/FriendOperation\n*L\n44#1,4:48\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/FriendOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/FriendOperation$Companion;


# instance fields
.field private body:Ljava/lang/String;

.field private friend:Lru/rocketbank/core/model/dto/operations/Friend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/FriendOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/FriendOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/FriendOperation;->Companion:Lru/rocketbank/core/model/FriendOperation$Companion;

    .line 48
    new-instance v0, Lru/rocketbank/core/model/FriendOperation$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/FriendOperation$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 51
    sput-object v0, Lru/rocketbank/core/model/FriendOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 16
    const-class v0, Lru/rocketbank/core/model/dto/operations/Friend;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Friend;

    iput-object v0, p0, Lru/rocketbank/core/model/FriendOperation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/FriendOperation;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/model/FriendOperation;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getFriend()Lru/rocketbank/core/model/dto/operations/Friend;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/FriendOperation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    return-object v0
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 7

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "\u0452"

    const-string/jumbo v3, "\u20bd"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 39
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/FriendOperation;->body:Ljava/lang/String;

    return-void
.end method

.method public final setFriend(Lru/rocketbank/core/model/dto/operations/Friend;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/FriendOperation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 21
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-nez p1, :cond_0

    .line 22
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/FriendOperation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget-object p2, p0, Lru/rocketbank/core/model/FriendOperation;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
