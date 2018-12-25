.class public final Lru/rocketbank/core/manager/DeliveryManager;
.super Ljava/lang/Object;
.source "DeliveryManager.kt"


# instance fields
.field private address:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field public currentDate:Ljava/util/Date;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private deliveryText:Ljava/lang/String;

.field private intervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;"
        }
    .end annotation
.end field

.field private lat:D

.field private lng:D

.field private nearestDate:Ljava/util/Date;

.field private senderPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->address:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->comment:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final getDeliveryText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->deliveryText:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatedDate(Ljava/util/Calendar;III)Ljava/lang/String;
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0, p4}, Ljava/util/Calendar;->set(II)V

    const/4 p4, 0x2

    .line 38
    invoke-virtual {p1, p4, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 39
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 40
    iget-object p2, p0, Lru/rocketbank/core/manager/DeliveryManager;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dateFormat.format(calendar.time)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getIntervals()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->intervals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLat()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->lat:D

    return-wide v0
.end method

.method public final getLng()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->lng:D

    return-wide v0
.end method

.method public final getNearestDate()Ljava/util/Date;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->nearestDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getSenderPhoto()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->senderPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public final setCurrentDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v0, "dateFormat.parse(date)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->currentDate:Ljava/util/Date;

    return-void
.end method

.method public final setDeliveryText(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->deliveryText:Ljava/lang/String;

    return-void
.end method

.method public final setIntervals(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->intervals:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLat(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->lat:D

    return-void
.end method

.method public final setLng(D)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->lng:D

    return-void
.end method

.method public final setNearestDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/manager/DeliveryManager;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->nearestDate:Ljava/util/Date;

    return-void
.end method

.method public final setSenderPhoto(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/manager/DeliveryManager;->senderPhoto:Ljava/lang/String;

    return-void
.end method
