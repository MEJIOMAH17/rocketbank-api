.class public final Lru/rocketbank/r2d2/fragments/card/NewCardFragment$onUserModel$1;
.super Ljava/lang/Object;
.source "NewCardFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/card/NewCardFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/model/AvailableCardModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeight(Ljava/lang/String;)I
    .locals 2

    const-string v0, "rub"

    .line 87
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    const-string v1, "usd"

    .line 91
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    const-string v1, "eur"

    .line 95
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 76
    check-cast p1, Lru/rocketbank/core/model/AvailableCardModel;

    check-cast p2, Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$onUserModel$1;->compare(Lru/rocketbank/core/model/AvailableCardModel;Lru/rocketbank/core/model/AvailableCardModel;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/core/model/AvailableCardModel;Lru/rocketbank/core/model/AvailableCardModel;)I
    .locals 1

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lhs.currency.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$onUserModel$1;->getWeight(Ljava/lang/String;)I

    move-result p1

    .line 79
    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rhs.currency.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$onUserModel$1;->getWeight(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
