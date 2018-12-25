.class public Lcom/samsung/android/sdk/samsungpay/v2/card/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "ACTIVE"

.field public static final CARD_TYPE:Ljava/lang/String; = "CARD_TYPE"

.field public static final CARD_TYPE_CREDIT:Ljava/lang/String; = "CREDIT"

.field public static final CARD_TYPE_CREDIT_DEBIT:Ljava/lang/String; = "PAYMENT"

.field public static final CARD_TYPE_DEBIT:Ljava/lang/String; = "DEBIT"

.field public static final CARD_TYPE_GIFT:Ljava/lang/String; = "GIFT"

.field public static final CARD_TYPE_LOYALTY:Ljava/lang/String; = "LOYALTY"

.field public static final CARD_TYPE_TRANSIT:Ljava/lang/String; = "TRANSIT"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPOSED:Ljava/lang/String; = "DISPOSED"

.field public static final EXPIRED:Ljava/lang/String; = "EXPIRED"

.field public static final PENDING_ENROLLED:Ljava/lang/String; = "ENROLLED"

.field public static final PENDING_PROVISION:Ljava/lang/String; = "PENDING_PROVISION"

.field public static final SUSPENDED:Ljava/lang/String; = "SUSPENDED"


# instance fields
.field private cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

.field private cardId:Ljava/lang/String;

.field private cardInfo:Landroid/os/Bundle;

.field private cardStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/Card$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    .line 200
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    .line 201
    sget-object p1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    .line 211
    sget-object p1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;->UNKNOWN_CARD:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;Landroid/os/Bundle;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 221
    iput-object p4, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardBrand()Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardInfo()Landroid/os/Bundle;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCardStatus()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    .line 166
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    return-void
.end method

.method public setCardBrand(Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setCardInfo(Landroid/os/Bundle;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    return-void
.end method

.method public setCardStatus(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card{cardId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cardStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cardBrand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cardInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 176
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardBrand:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 179
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->cardInfo:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
