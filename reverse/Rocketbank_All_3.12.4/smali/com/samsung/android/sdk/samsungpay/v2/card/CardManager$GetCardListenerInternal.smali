.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetCardListenerInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;
    }
.end annotation


# instance fields
.field private mSpayGetCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

.field private pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

.field private requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V
    .locals 2

    .line 1316
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1317
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    .line 1318
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->mSpayGetCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    .line 1319
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;B)V
    .locals 0

    .line 1316
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-object p0
.end method


# virtual methods
.method protected final getCardListener()Lcom/samsung/android/sdk/samsungpay/v2/card/ISGetCardListener;
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->mSpayGetCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    if-nez v0, :cond_0

    .line 1360
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->mSpayGetCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->mSpayGetCardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;

    return-object v0
.end method

.method public final set(Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->requestTracker:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    .line 1325
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-void
.end method
