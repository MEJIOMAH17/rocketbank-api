.class public Lru/rocketbank/core/model/StatusResponseSubData;
.super Ljava/lang/Object;
.source "StatusResponseSubData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/StatusResponseSubData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lru/rocketbank/core/model/StatusResponseSubData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/StatusResponseSubData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/StatusResponseSubData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseSubData;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseSubData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/StatusResponseSubData;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseSubData;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/core/model/StatusResponseSubData;->user:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    iget-object p2, p0, Lru/rocketbank/core/model/StatusResponseSubData;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
