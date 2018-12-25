.class public final Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;
.super Ljava/lang/Object;
.source "EventSendMonthCashBackRequest.kt"


# instance fields
.field private monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;-><init>(Lru/rocketbank/core/model/dto/operations/MonthCashBack;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/core/model/dto/operations/MonthCashBack;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;-><init>(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V

    return-void
.end method


# virtual methods
.method public final getMonthCashBack()Lru/rocketbank/core/model/dto/operations/MonthCashBack;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    return-object v0
.end method

.method public final setMonthCashBack(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/EventSendMonthCashBackRequest;->monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    return-void
.end method
