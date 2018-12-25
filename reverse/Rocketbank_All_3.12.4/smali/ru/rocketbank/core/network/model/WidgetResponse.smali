.class public final Lru/rocketbank/core/network/model/WidgetResponse;
.super Ljava/lang/Object;
.source "WidgetResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/WidgetResponse$Phone;
    }
.end annotation


# instance fields
.field private balace:D

.field private cashOutCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_out_count"
    .end annotation
.end field

.field private freeCashOutLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free_cash_out_limit"
    .end annotation
.end field

.field private mimimiles:D

.field private now:D

.field private phone:Lru/rocketbank/core/network/model/WidgetResponse$Phone;

.field private recentFriends:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recent_friends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/WidgetFriend;",
            ">;"
        }
    .end annotation
.end field

.field private recentOperations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recent_operations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private rocketrubles:D

.field private today:D

.field private unlimitedCashouts:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unlimited_cashouts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentOperations:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentFriends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBalace()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->balace:D

    return-wide v0
.end method

.method public final getCashOutCount()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->cashOutCount:I

    return v0
.end method

.method public final getFreeCashOutLimit()I
    .locals 1

    .line 14
    iget v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->freeCashOutLimit:I

    return v0
.end method

.method public final getMimimiles()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->mimimiles:D

    return-wide v0
.end method

.method public final getNow()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->now:D

    return-wide v0
.end method

.method public final getPhone()Lru/rocketbank/core/network/model/WidgetResponse$Phone;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->phone:Lru/rocketbank/core/network/model/WidgetResponse$Phone;

    return-object v0
.end method

.method public final getRecentFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/WidgetFriend;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentFriends:Ljava/util/List;

    return-object v0
.end method

.method public final getRecentOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentOperations:Ljava/util/List;

    return-object v0
.end method

.method public final getRocketrubles()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->rocketrubles:D

    return-wide v0
.end method

.method public final getToday()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->today:D

    return-wide v0
.end method

.method public final getUnlimitedCashouts()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/WidgetResponse;->unlimitedCashouts:Z

    return v0
.end method

.method public final setBalace(D)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->balace:D

    return-void
.end method

.method public final setCashOutCount(I)V
    .locals 0

    .line 11
    iput p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->cashOutCount:I

    return-void
.end method

.method public final setFreeCashOutLimit(I)V
    .locals 0

    .line 14
    iput p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->freeCashOutLimit:I

    return-void
.end method

.method public final setMimimiles(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->mimimiles:D

    return-void
.end method

.method public final setNow(D)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->now:D

    return-void
.end method

.method public final setPhone(Lru/rocketbank/core/network/model/WidgetResponse$Phone;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->phone:Lru/rocketbank/core/network/model/WidgetResponse$Phone;

    return-void
.end method

.method public final setRecentFriends(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/WidgetFriend;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentFriends:Ljava/util/List;

    return-void
.end method

.method public final setRecentOperations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->recentOperations:Ljava/util/List;

    return-void
.end method

.method public final setRocketrubles(D)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->rocketrubles:D

    return-void
.end method

.method public final setToday(D)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->today:D

    return-void
.end method

.method public final setUnlimitedCashouts(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/WidgetResponse;->unlimitedCashouts:Z

    return-void
.end method
