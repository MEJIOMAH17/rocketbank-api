.class public Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;
.super Lru/rocketbank/core/model/dto/operations/MonthCashBack;
.source "MonthCashBackChosen.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;-><init>(Landroid/os/Parcel;)V

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

    .line 17
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
