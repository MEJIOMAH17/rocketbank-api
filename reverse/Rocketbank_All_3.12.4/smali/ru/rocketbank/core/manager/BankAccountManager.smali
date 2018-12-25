.class public final Lru/rocketbank/core/manager/BankAccountManager;
.super Ljava/lang/Object;
.source "BankAccountManager.kt"


# instance fields
.field private final accounts:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mainAccount:Lru/rocketbank/core/model/facade/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/BankAccountManager;->accounts:Landroid/support/v4/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/manager/BankAccountManager;->accounts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    return-object p1
.end method

.method public final getMainImmediate()Lru/rocketbank/core/model/facade/Account;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/BankAccountManager;->mainAccount:Lru/rocketbank/core/model/facade/Account;

    return-object v0
.end method

.method public final updateAccounts(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/AccountModel;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/SafeAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accountList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeAccountList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/manager/BankAccountManager;->accounts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/AccountModel;

    .line 29
    new-instance v1, Lru/rocketbank/core/model/facade/Account;

    invoke-direct {v1, v0}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/AccountModel;)V

    .line 30
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getMain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iput-object v1, p0, Lru/rocketbank/core/manager/BankAccountManager;->mainAccount:Lru/rocketbank/core/model/facade/Account;

    .line 34
    :cond_0
    iget-object v2, p0, Lru/rocketbank/core/manager/BankAccountManager;->accounts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/SafeAccount;

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/manager/BankAccountManager;->accounts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/model/facade/Account;

    invoke-direct {v2, p2}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/SafeAccount;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
