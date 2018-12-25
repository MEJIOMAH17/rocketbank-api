.class public final enum Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;
.super Ljava/lang/Enum;
.source "SpaySdk.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum AMERICANEXPRESS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum CHINAUNIONPAY:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCOVER:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum MASTERCARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum OCTOPUS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field public static final enum VISA:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 610
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "AMERICANEXPRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->AMERICANEXPRESS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 612
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "MASTERCARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->MASTERCARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 614
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "VISA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->VISA:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 616
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "DISCOVER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->DISCOVER:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 618
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "CHINAUNIONPAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->CHINAUNIONPAY:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 620
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "UNKNOWN_CARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 622
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const-string v1, "OCTOPUS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->OCTOPUS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    const/4 v0, 0x7

    .line 608
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->AMERICANEXPRESS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->MASTERCARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->VISA:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->DISCOVER:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->CHINAUNIONPAY:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->OCTOPUS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 651
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;
    .locals 1

    .line 628
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VISA"

    .line 629
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "VI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "MASTERCARD"

    .line 631
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MASTER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    const-string v0, "AMEX"

    .line 634
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "AX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "AMERICANEXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "DISCOVER"

    .line 637
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "DS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "CUP"

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "CHINA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "OCL"

    .line 641
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "OC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 644
    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 642
    :cond_6
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->OCTOPUS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 640
    :cond_7
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->CHINAUNIONPAY:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 638
    :cond_8
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->DISCOVER:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 636
    :cond_9
    :goto_3
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->AMERICANEXPRESS:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 633
    :cond_a
    :goto_4
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->MASTERCARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0

    .line 630
    :cond_b
    :goto_5
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->VISA:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;
    .locals 1

    .line 608
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;
    .locals 1

    .line 608
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
