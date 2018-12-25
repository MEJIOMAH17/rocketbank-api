.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddCardInfoListenerInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;
    }
.end annotation


# instance fields
.field private pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

.field private requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

.field private spayAddCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V
    .locals 1

    .line 1412
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1414
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    .line 1416
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    .line 1417
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;B)V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->spayAddCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;B)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;
    .locals 0

    .line 1412
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;
    .locals 0

    .line 1412
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-object p0
.end method


# virtual methods
.method public final getAddCardListener()Lcom/samsung/android/sdk/samsungpay/v2/card/ISAddCardListener;
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->spayAddCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;

    return-object v0
.end method

.method public final set(Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    .line 1422
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-void
.end method
