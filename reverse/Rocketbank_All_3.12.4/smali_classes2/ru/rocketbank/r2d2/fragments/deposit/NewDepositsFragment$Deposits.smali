.class public Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
.super Ljava/lang/Object;
.source "NewDepositsFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deposits"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currency:Ljava/lang/String;

.field private deposits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/Deposit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDeposits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/Deposit;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->deposits:Ljava/util/List;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->currency:Ljava/lang/String;

    return-void
.end method

.method public setDeposits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/Deposit;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->deposits:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->deposits:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
