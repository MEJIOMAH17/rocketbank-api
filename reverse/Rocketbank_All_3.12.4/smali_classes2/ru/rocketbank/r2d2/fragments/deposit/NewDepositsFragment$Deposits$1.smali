.class final Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits$1;
.super Ljava/lang/Object;
.source "NewDepositsFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
    .locals 1

    .line 141
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits$1;->newArray(I)[Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
    .locals 0

    .line 146
    new-array p1, p1, [Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    return-object p1
.end method
