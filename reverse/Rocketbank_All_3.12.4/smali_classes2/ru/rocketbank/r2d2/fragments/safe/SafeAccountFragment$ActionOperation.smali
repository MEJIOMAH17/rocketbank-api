.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionOperation"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 689
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    .line 669
    iput p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->type:I

    .line 670
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->setId(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->type:I

    return-void
.end method

.method static synthetic access$1500(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;)I
    .locals 0

    .line 665
    iget p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->type:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 680
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 681
    iget p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
