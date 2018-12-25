.class public final Lru/rocketbank/core/model/facade/Account;
.super Ljava/lang/Object;
.source "Account.kt"


# instance fields
.field private accountModel:Lru/rocketbank/core/model/AccountModel;

.field private safeAccount:Lru/rocketbank/core/model/SafeAccount;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/AccountModel;)V
    .locals 1

    const-string v0, "accountModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/SafeAccount;)V
    .locals 1

    const-string v0, "safeAccount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-void
.end method


# virtual methods
.method public final getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;
    .locals 2

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0

    .line 76
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;

    move-result-object v0

    const-string v1, "safeAccount!!.accountDetails"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAccountModel()Lru/rocketbank/core/model/AccountModel;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    return-object v0
.end method

.method public final getBalance()D
    .locals 2

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getBalance()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getBigDecimalBalance()Ljava/math/BigDecimal;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "BigDecimal.valueOf(balance)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrency()Lru/rocketbank/core/model/enums/Currency;
    .locals 2

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    const-string v1, "safeAccount!!.currency"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0

    .line 94
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safeAccount!!.currencyCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSafeAccount()Lru/rocketbank/core/model/SafeAccount;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-object v0
.end method

.method public final getStatus()Lru/rocketbank/core/model/enums/Status;
    .locals 2

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getStatus()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    const-string v1, "safeAccount!!.status"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0

    .line 46
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safeAccount!!.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0

    .line 37
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safeAccount!!.token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isSafeAccount()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setAccountModel(Lru/rocketbank/core/model/AccountModel;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/facade/Account;->accountModel:Lru/rocketbank/core/model/AccountModel;

    return-void
.end method

.method public final setSafeAccount(Lru/rocketbank/core/model/SafeAccount;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/facade/Account;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-void
.end method
