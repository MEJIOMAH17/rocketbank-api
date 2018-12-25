.class public Lio/card/payment/CreditCard;
.super Ljava/lang/Object;
.source "CreditCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/card/payment/CreditCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPIRY_MAX_FUTURE_YEARS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "CreditCard"


# instance fields
.field public cardNumber:Ljava/lang/String;

.field public cardholderName:Ljava/lang/String;

.field public cvv:Ljava/lang/String;

.field public expiryMonth:I

.field public expiryYear:I

.field flipped:Z

.field public postalCode:Ljava/lang/String;

.field scanId:Ljava/lang/String;

.field xoff:[I

.field yoff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lio/card/payment/CreditCard$1;

    invoke-direct {v0}, Lio/card/payment/CreditCard$1;-><init>()V

    sput-object v0, Lio/card/payment/CreditCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 39
    iput v0, p0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 58
    iput-boolean v0, p0, Lio/card/payment/CreditCard;->flipped:Z

    const/16 v0, 0x10

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lio/card/payment/CreditCard;->xoff:[I

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->scanId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 39
    iput v0, p0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 58
    iput-boolean v0, p0, Lio/card/payment/CreditCard;->flipped:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CreditCard;->scanId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/card/payment/CreditCard;->yoff:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/CreditCard;->xoff:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/card/payment/CreditCard$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lio/card/payment/CreditCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 39
    iput v0, p0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 58
    iput-boolean v0, p0, Lio/card/payment/CreditCard;->flipped:Z

    .line 69
    iput-object p1, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 70
    iput p2, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 71
    iput p3, p0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 72
    iput-object p4, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardType()Lio/card/payment/CardType;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-static {v0}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedCardNumber()Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1046
    invoke-static {v0, v1, v2}, Lio/card/payment/Logo;->formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastFourDigitsOfCardNumber()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 126
    iget-object v1, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    iget-object v1, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    iget-object v2, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRedactedCardNumber()Ljava/lang/String;
    .locals 5

    .line 138
    iget-object v0, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 140
    iget-object v1, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    const/16 v4, 0x2022

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/card/payment/CreditCard;->getLastFourDigitsOfCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 146
    invoke-static {v1}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object v1

    .line 145
    invoke-static {v0, v2, v1}, Lio/card/payment/Logo;->formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public isExpiryValid()Z
    .locals 7

    .line 170
    iget v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    iget v1, p0, Lio/card/payment/CreditCard;->expiryYear:I

    const/4 v2, 0x0

    if-lez v0, :cond_4

    const/16 v3, 0xc

    if-ge v3, v0, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 1100
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 1101
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    if-ge v1, v5, :cond_1

    return v2

    :cond_1
    if-ne v1, v5, :cond_2

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0xf

    if-le v1, v5, :cond_3

    return v2

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/card/payment/CreditCard;->getCardType()Lio/card/payment/CardType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/card/payment/CreditCard;->getRedactedCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget v1, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    if-gtz v1, :cond_0

    iget v1, p0, Lio/card/payment/CreditCard;->expiryYear:I

    if-lez v1, :cond_1

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  expiry:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/card/payment/CreditCard;->expiryYear:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_1
    iget-object v1, p0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  postalCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_2
    iget-object v1, p0, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  cardholderName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_3
    iget-object v1, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  cvvLength:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 97
    iget-object p2, p0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget p2, p0, Lio/card/payment/CreditCard;->expiryMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lio/card/payment/CreditCard;->expiryYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lio/card/payment/CreditCard;->scanId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget p2, p0, Lio/card/payment/CreditCard;->yoff:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p2, p0, Lio/card/payment/CreditCard;->xoff:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
