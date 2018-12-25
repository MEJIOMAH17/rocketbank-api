.class public Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;
.super Ljava/lang/Object;
.source "SheetControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private controlId:Ljava/lang/String;

.field private controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;

    .line 137
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public getControlId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    return-object v0
.end method

.method public getControltype()Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method protected setControlId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    return-void

    .line 97
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "setControlId : controlId is invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setControltype(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controltype:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->controlId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
