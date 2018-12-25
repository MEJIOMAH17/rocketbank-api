.class public abstract Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.super Ljava/lang/Object;
.source "PublicMethod.java"


# instance fields
.field extraErrorData:Landroid/os/Bundle;

.field mReadyStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->extraErrorData:Landroid/os/Bundle;

    .line 1021
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->getSpayValidity(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)I

    move-result p1

    .line 1025
    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    .line 1026
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->setPartnerDefinedSdkApiLevel(Landroid/os/Bundle;)V

    .line 1028
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->extraErrorData:Landroid/os/Bundle;

    const-string p3, "errorReason"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->errorCodeToReadyStatus(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->mReadyStatus:I

    .line 17
    iget p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->mReadyStatus:I

    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->extraErrorData:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;->run(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public abstract run(ILandroid/os/Bundle;)V
.end method
