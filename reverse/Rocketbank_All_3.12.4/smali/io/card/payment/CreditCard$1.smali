.class final Lio/card/payment/CreditCard$1;
.super Ljava/lang/Object;
.source "CreditCard.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/card/payment/CreditCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/card/payment/CreditCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2112
    new-instance v0, Lio/card/payment/CreditCard;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/card/payment/CreditCard;-><init>(Landroid/os/Parcel;Lio/card/payment/CreditCard$1;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1117
    new-array p1, p1, [Lio/card/payment/CreditCard;

    return-object p1
.end method
