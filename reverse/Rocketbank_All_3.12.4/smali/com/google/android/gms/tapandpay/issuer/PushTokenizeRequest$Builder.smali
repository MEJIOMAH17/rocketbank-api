.class public Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbNB:Ljava/lang/String;

.field private zzbPr:I

.field private zzbPs:I

.field private zzbPt:[B

.field private zzbPu:Ljava/lang/String;

.field private zzbPv:Lcom/google/android/gms/identity/intents/model/UserAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;
    .locals 9

    new-instance v8, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;

    iget v1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPr:I

    iget v2, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPs:I

    iget-object v3, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPt:[B

    iget-object v4, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbNB:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPv:Lcom/google/android/gms/identity/intents/model/UserAddress;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;-><init>(II[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$1;)V

    return-object v8
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbNB:Ljava/lang/String;

    return-object p0
.end method

.method public setLastDigits(Ljava/lang/String;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPu:Ljava/lang/String;

    return-object p0
.end method

.method public setNetwork(I)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPr:I

    return-object p0
.end method

.method public setOpaquePaymentCard([B)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPt:[B

    return-object p0
.end method

.method public setTokenServiceProvider(I)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPs:I

    return-object p0
.end method

.method public setUserAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->zzbPv:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object p0
.end method
