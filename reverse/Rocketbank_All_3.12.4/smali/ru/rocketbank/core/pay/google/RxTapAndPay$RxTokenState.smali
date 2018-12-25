.class public final enum Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;
.super Ljava/lang/Enum;
.source "RxTapAndPay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RxTokenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

.field public static final enum ACTIVE:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

.field public static final enum NOT_FOUND:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

.field public static final enum OTHER:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

.field public static final enum UNTOKENIZED:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    const-string v2, "ACTIVE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ACTIVE:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    const-string v2, "UNTOKENIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->UNTOKENIZED:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->NOT_FOUND:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    const-string v2, "OTHER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->OTHER:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->$VALUES:[Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;
    .locals 1

    const-class v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;
    .locals 1

    sget-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->$VALUES:[Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-virtual {v0}, [Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    return-object v0
.end method
