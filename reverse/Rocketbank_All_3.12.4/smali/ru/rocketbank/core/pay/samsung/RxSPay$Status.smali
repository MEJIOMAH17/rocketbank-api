.class public final enum Lru/rocketbank/core/pay/samsung/RxSPay$Status;
.super Ljava/lang/Enum;
.source "RxSPay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/pay/samsung/RxSPay$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/pay/samsung/RxSPay$Status;

.field public static final enum CARD_ADDED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

.field public static final enum NOT_READY:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

.field public static final enum NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

.field public static final enum NO_CARD:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

.field public static final enum UPDATE_NEED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    const-string v2, "NOT_SUPPORTED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    const-string v2, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_READY:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    const-string v2, "UPDATE_NEED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->UPDATE_NEED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    const-string v2, "NO_CARD"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NO_CARD:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    const-string v2, "CARD_ADDED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->CARD_ADDED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->$VALUES:[Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/pay/samsung/RxSPay$Status;
    .locals 1

    const-class v0, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/pay/samsung/RxSPay$Status;
    .locals 1

    sget-object v0, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->$VALUES:[Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v0}, [Lru/rocketbank/core/pay/samsung/RxSPay$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    return-object v0
.end method
