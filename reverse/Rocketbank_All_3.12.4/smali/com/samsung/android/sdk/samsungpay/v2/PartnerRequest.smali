.class public final Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;
.super Ljava/lang/Object;
.source "PartnerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;
    }
.end annotation


# instance fields
.field public callbackObj:Ljava/lang/Object;

.field private mPartnerRequestState:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;

.field public operation:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj1:Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj2:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isPartnerRequestProcessing()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->mPartnerRequestState:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PROCESSING:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setPartnerRequestState(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->mPartnerRequestState:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    return-void
.end method
