.class public Lru/rocketbank/core/model/migration/Migration$Transfer;
.super Ljava/lang/Object;
.source "Migration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/migration/Migration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transfer"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/migration/Migration$Transfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private quick:F

.field private slow:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Transfer$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/migration/Migration$Transfer$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Transfer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->quick:F

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->slow:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQuick()F
    .locals 1

    .line 140
    iget v0, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->quick:F

    return v0
.end method

.method public getSlowMoney()F
    .locals 1

    .line 144
    iget v0, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->slow:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 155
    iget p2, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->quick:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    iget p2, p0, Lru/rocketbank/core/model/migration/Migration$Transfer;->slow:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
