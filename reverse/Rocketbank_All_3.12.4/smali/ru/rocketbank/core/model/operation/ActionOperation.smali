.class public Lru/rocketbank/core/model/operation/ActionOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "ActionOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/operation/ActionOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lru/rocketbank/core/model/operation/ActionOperation$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/operation/ActionOperation$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/operation/ActionOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    .line 13
    iput p1, p0, Lru/rocketbank/core/model/operation/ActionOperation;->type:I

    .line 14
    invoke-virtual {p0, p2}, Lru/rocketbank/core/model/operation/ActionOperation;->setId(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
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

    .line 23
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
