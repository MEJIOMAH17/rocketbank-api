.class final Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;->invoke(Lru/rocketbank/core/model/UserModel;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/facade/Account;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;->$userModel:Lru/rocketbank/core/model/UserModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;->invoke(Lru/rocketbank/core/model/facade/Account;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/facade/Account;)Z
    .locals 4

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;->$userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccountOrLocked()Lru/rocketbank/core/model/AccountModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->isSafeAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    sget-object v3, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getSafeAccount()Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/SafeAccount;->getBank()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string p1, "rocket"

    invoke-static {v2, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v1
.end method
