.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateServiceSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;
    }
.end annotation


# instance fields
.field private cardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardListener;

.field private compName:Landroid/content/ComponentName;

.field private initiateCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;

.field private pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

.field private sessionCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V
    .locals 1

    .line 1575
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1569
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    .line 1570
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->compName:Landroid/content/ComponentName;

    .line 1571
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->cardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardListener;

    .line 1572
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->sessionCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    .line 1573
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;B)V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->initiateCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;

    .line 1576
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    .line 1577
    iget-object p1, p2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->cardListener:Lcom/samsung/android/sdk/samsungpay/v2/card/CardListener;

    .line 1578
    iput-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->sessionCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Landroid/content/ComponentName;
    .locals 0

    .line 1568
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->compName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 1568
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->compName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;
    .locals 0

    .line 1568
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->sessionCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;
    .locals 0

    .line 1568
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->pReq:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    return-object p0
.end method


# virtual methods
.method public final getInitiateSessionCallback()Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->initiateCallback:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;

    return-object v0
.end method
