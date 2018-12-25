.class public final enum Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;
.super Ljava/lang/Enum;
.source "PartnerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PartnerRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

.field public static final enum NOT_IN_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

.field public static final enum PENDING_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

.field public static final enum PROCESSING:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    const-string v1, "NOT_IN_QUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->NOT_IN_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    .line 22
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    const-string v1, "PENDING_QUEUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PENDING_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    .line 23
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    const-string v1, "PROCESSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PROCESSING:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->NOT_IN_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PENDING_QUEUE:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PROCESSING:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    return-object v0
.end method
