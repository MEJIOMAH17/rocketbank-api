.class public final Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;
.super Ljava/lang/Object;
.source "NewSafeFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/model/AvailableAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeight(Ljava/lang/String;)I
    .locals 2

    const-string v0, "rub"

    .line 59
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    const-string v1, "usd"

    .line 63
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    const-string v1, "eur"

    .line 67
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

    .line 48
    check-cast p1, Lru/rocketbank/core/model/AvailableAccount;

    check-cast p2, Lru/rocketbank/core/model/AvailableAccount;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;->compare(Lru/rocketbank/core/model/AvailableAccount;Lru/rocketbank/core/model/AvailableAccount;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/core/model/AvailableAccount;Lru/rocketbank/core/model/AvailableAccount;)I
    .locals 1

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableAccount;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;->getWeight(Ljava/lang/String;)I

    move-result p1

    .line 51
    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableAccount;->getCurrency()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$onUserModel$1;->getWeight(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
