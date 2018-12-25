.class public Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Amount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private itemTotalPrice:Ljava/lang/String;

.field private shippingPrice:Ljava/lang/String;

.field private tax:Ljava/lang/String;

.field private totalPrice:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 938
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->version:Ljava/lang/String;

    .line 852
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->currencyCode:Ljava/lang/String;

    .line 854
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->itemTotalPrice:Ljava/lang/String;

    .line 856
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->tax:Ljava/lang/String;

    .line 857
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->shippingPrice:Ljava/lang/String;

    .line 859
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->totalPrice:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;)V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;

    invoke-direct {p1}, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;->getVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->version:Ljava/lang/String;

    const/4 p1, 0x0

    .line 840
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->currencyCode:Ljava/lang/String;

    .line 841
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->itemTotalPrice:Ljava/lang/String;

    .line 842
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->tax:Ljava/lang/String;

    .line 843
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->shippingPrice:Ljava/lang/String;

    .line 844
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->totalPrice:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$1;)V
    .locals 0

    .line 826
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;)Z
    .locals 0

    .line 826
    invoke-static {p0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->isValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 960
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTotalPrice()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->itemTotalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingPrice()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->shippingPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTax()Ljava/lang/String;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->tax:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->totalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 927
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 928
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 929
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->itemTotalPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 930
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->tax:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 931
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->shippingPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 932
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;->totalPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
