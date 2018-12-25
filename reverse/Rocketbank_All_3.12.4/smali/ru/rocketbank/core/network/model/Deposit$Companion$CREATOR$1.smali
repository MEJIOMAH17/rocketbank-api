.class public final Lru/rocketbank/core/network/model/Deposit$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "Deposit.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/Deposit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/network/model/Deposit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/Deposit$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/network/model/Deposit;
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lru/rocketbank/core/network/model/Deposit;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/Deposit;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/Deposit$Companion$CREATOR$1;->newArray(I)[Lru/rocketbank/core/network/model/Deposit;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/core/network/model/Deposit;
    .locals 0

    .line 121
    new-array p1, p1, [Lru/rocketbank/core/network/model/Deposit;

    return-object p1
.end method
