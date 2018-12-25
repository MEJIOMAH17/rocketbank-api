.class public final Lru/rocketbank/core/model/JointAccount;
.super Ljava/lang/Object;
.source "JointAccount.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/JointAccount$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/JointAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/JointAccount$Companion;


# instance fields
.field private id:Ljava/lang/Integer;

.field private joint_user_avatar:Ljava/lang/String;

.field private joint_user_id:Ljava/lang/Integer;

.field private joint_user_name:Ljava/lang/String;

.field private joint_user_name_instrumental:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private user_avatar:Ljava/lang/String;

.field private user_id:Ljava/lang/Integer;

.field private user_name:Ljava/lang/String;

.field private user_name_instrumental:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/JointAccount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/JointAccount$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/JointAccount;->Companion:Lru/rocketbank/core/model/JointAccount$Companion;

    .line 61
    new-instance v0, Lru/rocketbank/core/model/JointAccount$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/JointAccount$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/JointAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lru/rocketbank/core/model/JointAccount;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/core/model/JointAccount;-><init>()V

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->id:Ljava/lang/Integer;

    .line 32
    iput-object p2, p0, Lru/rocketbank/core/model/JointAccount;->status:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_id:Ljava/lang/Integer;

    .line 34
    iput-object p4, p0, Lru/rocketbank/core/model/JointAccount;->user_id:Ljava/lang/Integer;

    .line 35
    iput-object p5, p0, Lru/rocketbank/core/model/JointAccount;->user_name:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lru/rocketbank/core/model/JointAccount;->user_name_instrumental:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name_instrumental:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lru/rocketbank/core/model/JointAccount;->user_avatar:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_avatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getJoint_user_avatar()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getJoint_user_id()Ljava/lang/Integer;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getJoint_user_name()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getJoint_user_name_instrumental()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name_instrumental:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_avatar()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->user_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_id()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->user_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUser_name()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_name_instrumental()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->user_name_instrumental:Ljava/lang/String;

    return-object v0
.end method

.method public final isConfirmed()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->status:Ljava/lang/String;

    const-string v1, "confirmed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setId(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->id:Ljava/lang/Integer;

    return-void
.end method

.method public final setJoint_user_avatar(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_avatar:Ljava/lang/String;

    return-void
.end method

.method public final setJoint_user_id(Ljava/lang/Integer;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setJoint_user_name(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name:Ljava/lang/String;

    return-void
.end method

.method public final setJoint_user_name_instrumental(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name_instrumental:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->status:Ljava/lang/String;

    return-void
.end method

.method public final setUser_avatar(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->user_avatar:Ljava/lang/String;

    return-void
.end method

.method public final setUser_id(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->user_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->user_name:Ljava/lang/String;

    return-void
.end method

.method public final setUser_name_instrumental(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/JointAccount;->user_name_instrumental:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_id:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    if-eqz p1, :cond_6

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/model/JointAccount;->user_id:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    if-eqz p1, :cond_7

    .line 52
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->user_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 53
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 54
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->user_name_instrumental:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_a

    .line 55
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_name_instrumental:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 56
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->user_avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_c

    .line 57
    iget-object p2, p0, Lru/rocketbank/core/model/JointAccount;->joint_user_avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_c
    return-void
.end method
