.class final Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo$1;
.super Ljava/lang/Object;
.source "AddCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2198
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1203
    new-array p1, p1, [Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    return-object p1
.end method
