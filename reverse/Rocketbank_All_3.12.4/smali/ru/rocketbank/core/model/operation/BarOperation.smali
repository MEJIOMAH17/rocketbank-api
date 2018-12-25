.class public Lru/rocketbank/core/model/operation/BarOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "BarOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/operation/BarOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lru/rocketbank/core/model/operation/BarOperation$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/operation/BarOperation$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/operation/BarOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    const/high16 v0, 0x10000

    .line 10
    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/operation/BarOperation;->setId(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
