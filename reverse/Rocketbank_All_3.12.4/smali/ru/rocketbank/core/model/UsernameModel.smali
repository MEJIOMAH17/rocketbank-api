.class public final Lru/rocketbank/core/model/UsernameModel;
.super Ljava/lang/Object;
.source "UsernameModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/UsernameModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private works:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "works"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lru/rocketbank/core/model/UsernameModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/UsernameModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/UsernameModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/UsernameModel;->works:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/UsernameModel;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/UsernameModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final isWorks()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lru/rocketbank/core/model/UsernameModel;->works:Z

    return v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/rocketbank/core/model/UsernameModel;->value:Ljava/lang/String;

    return-void
.end method

.method public final setWorks(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lru/rocketbank/core/model/UsernameModel;->works:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    iget-boolean p2, p0, Lru/rocketbank/core/model/UsernameModel;->works:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    iget-object p2, p0, Lru/rocketbank/core/model/UsernameModel;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
