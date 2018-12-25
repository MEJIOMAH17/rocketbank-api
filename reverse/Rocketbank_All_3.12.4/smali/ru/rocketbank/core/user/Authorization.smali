.class public final Lru/rocketbank/core/user/Authorization;
.super Ljava/lang/Object;
.source "Authorization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/user/Authorization$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorization.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Authorization.kt\nru/rocketbank/core/user/Authorization\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,306:1\n222#2,2:307\n*E\n*S KotlinDebug\n*F\n+ 1 Authorization.kt\nru/rocketbank/core/user/Authorization\n*L\n292#1,2:307\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/user/Authorization$Companion;

.field private static final TAG:Ljava/lang/String; = "Auth"


# instance fields
.field private final analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

.field private final authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

.field private final bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

.field private final context:Landroid/content/Context;

.field private final dataManager:Lru/rocketbank/core/manager/DataManager;

.field private pusherToken:Ljava/lang/String;

.field private final userApi:Lru/rocketbank/core/network/api/UserApi;

.field private volatile userImmediate:Lru/rocketbank/core/model/UserModel;

.field private final userModelObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private final userModelSubject:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "Lru/rocketbank/core/model/UserModel;",
            "Lru/rocketbank/core/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/user/Authorization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/user/Authorization$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/user/Authorization;->Companion:Lru/rocketbank/core/user/Authorization$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/network/api/UserApi;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/DataManager;Lru/rocketbank/core/manager/AnalyticsManager;Lru/rocketbank/core/manager/BankAccountManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizationStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankAccountManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/user/Authorization;->userApi:Lru/rocketbank/core/network/api/UserApi;

    iput-object p3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    iput-object p4, p0, Lru/rocketbank/core/user/Authorization;->dataManager:Lru/rocketbank/core/manager/DataManager;

    iput-object p5, p0, Lru/rocketbank/core/user/Authorization;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    iput-object p6, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    .line 56
    new-instance p1, Lrx/subjects/SerializedSubject;

    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p2

    check-cast p2, Lrx/subjects/Subject;

    invoke-direct {p1, p2}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    check-cast p1, Lrx/subjects/Subject;

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization;->userModelSubject:Lrx/subjects/Subject;

    .line 57
    iget-object p1, p0, Lru/rocketbank/core/user/Authorization;->userModelSubject:Lrx/subjects/Subject;

    invoke-virtual {p1}, Lrx/subjects/Subject;->asObservable()Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->publish()Lrx/observables/ConnectableObservable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/observables/ConnectableObservable;->refCount()Lrx/Observable;

    move-result-object p1

    const-string p2, "userModelSubject.asObser\u2026le().publish().refCount()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization;->userModelObservable:Lrx/Observable;

    return-void
.end method

.method public static getAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/UserModel;",
            ")",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation

    const-string v0, "userModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "accountModels"

    .line 137
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 138
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/AccountModel;

    .line 139
    new-instance v6, Lru/rocketbank/core/model/facade/Account;

    const-string v7, "accountModel"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/AccountModel;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "safeAccounts"

    .line 143
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    .line 144
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/SafeAccount;

    .line 145
    new-instance v4, Lru/rocketbank/core/model/facade/Account;

    const-string v5, "safeAccount"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/SafeAccount;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getActiveAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/UserModel;",
            ")",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation

    const-string v0, "userModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "accountModels"

    .line 249
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 250
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/AccountModel;

    .line 252
    invoke-virtual {v5}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    new-instance v6, Lru/rocketbank/core/model/facade/Account;

    const-string v7, "accountModel"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/AccountModel;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "safeAccounts"

    .line 258
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_2

    .line 259
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/SafeAccount;

    .line 260
    new-instance v4, Lru/rocketbank/core/model/facade/Account;

    const-string v5, "safeAccount"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/SafeAccount;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getAccount(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/user/Authorization$getAccount$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/user/Authorization$getAccount$1;-><init>(Lru/rocketbank/core/user/Authorization;Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 100
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 101
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "user.map { userModel ->\n\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/BankAccountManager;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    return-object p1
.end method

.method public final getAccountImmediate(Lru/rocketbank/core/model/UserModel;Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "token"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/manager/BankAccountManager;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    return-object p1
.end method

.method public final getAccounts()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;>;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/user/Authorization$accounts$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/user/Authorization$accounts$1;-><init>(Lru/rocketbank/core/user/Authorization;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 131
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "user.map { getAccountsIm\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogin()Ljava/lang/String;
    .locals 1

    .line 13052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 14015
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$login()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 292
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    if-eqz v1, :cond_5

    const-string v2, "userModel"

    .line 293
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "token"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25109
    iget-object v2, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    invoke-virtual {v2, p1}, Lru/rocketbank/core/manager/BankAccountManager;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object v2

    if-nez v2, :cond_3

    .line 293
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object v1

    const-string v2, "userModel.deposits"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 307
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/DepositModel;

    .line 293
    invoke-virtual {v3}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 294
    new-instance v0, Lru/rocketbank/core/exceptions/NoAccountException;

    invoke-direct {v0, p1}, Lru/rocketbank/core/exceptions/NoAccountException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_4
    return-object v2

    :cond_5
    return-object v0
.end method

.method public final getPusherToken()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->pusherToken:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getPusherToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 10052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 11016
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 5052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 6031
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUser()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->userModelObservable:Lrx/Observable;

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userModelObservable:Lrx/Observable;

    .line 94
    :cond_1
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "observable.observeOn(And\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserData()Lru/rocketbank/core/realm/UserData;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    return-object v0
.end method

.method public final getUserImmediate()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final isAuthorized()Z
    .locals 2

    .line 2052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 3031
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "user_feed"

    .line 4052
    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v1}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    .line 5016
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final refreshBackgroundProfile()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lru/rocketbank/core/user/Authorization;->refreshProfile()Lrx/Observable;

    move-result-object v0

    .line 160
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 161
    new-instance v1, Lru/rocketbank/core/user/Authorization$refreshBackgroundProfile$1;

    invoke-direct {v1}, Lru/rocketbank/core/user/Authorization$refreshBackgroundProfile$1;-><init>()V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final refreshProfile()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UserResponse;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userApi:Lru/rocketbank/core/network/api/UserApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/UserApi;->getProfile()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 182
    new-instance v1, Lru/rocketbank/core/user/Authorization$refreshProfile$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/user/Authorization$refreshProfile$1;-><init>(Lru/rocketbank/core/user/Authorization;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "userApi.profile.observeO\u2026      }\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final reloadProfile()V
    .locals 2

    .line 193
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userModelSubject:Lrx/subjects/Subject;

    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0, v1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetToken()V
    .locals 2

    .line 8052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const/4 v1, 0x0

    .line 9031
    invoke-virtual {v0, v1}, Lru/rocketbank/core/realm/UserData;->realmSet$token(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    .line 9052
    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v1}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method

.method public final setLogin(Ljava/lang/String;)V
    .locals 1

    .line 14052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 15015
    invoke-virtual {v0, p1}, Lru/rocketbank/core/realm/UserData;->realmSet$login(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    .line 15052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 202
    invoke-interface {p1, v0}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method

.method public final setPusherToken(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/user/Authorization;->pusherToken:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 1

    .line 11052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 12016
    invoke-virtual {v0, p1}, Lru/rocketbank/core/realm/UserData;->realmSet$status(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    .line 12052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 155
    invoke-interface {p1, v0}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    .line 6052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 7031
    invoke-virtual {v0, p1}, Lru/rocketbank/core/realm/UserData;->realmSet$token(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    .line 7052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 76
    invoke-interface {p1, v0}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method

.method public final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iput-object p1, p0, Lru/rocketbank/core/user/Authorization;->userImmediate:Lru/rocketbank/core/model/UserModel;

    .line 216
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "userModel.accounts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "userModel.safeAccounts"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/BankAccountManager;->updateAccounts(Ljava/util/List;Ljava/util/List;)V

    .line 218
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/AnalyticsManager;->setUserId(J)V

    .line 219
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->dataManager:Lru/rocketbank/core/manager/DataManager;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getProvidersHash()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/DataManager;->update(I)V

    .line 15267
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->bankAccountManager:Lru/rocketbank/core/manager/BankAccountManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/BankAccountManager;->getMainImmediate()Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15268
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 16052
    :goto_0
    iget-object v3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v3}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    .line 15270
    iget-object v4, p1, Lru/rocketbank/core/model/UserModel;->widgetToken:Ljava/lang/String;

    .line 17025
    invoke-virtual {v3, v4}, Lru/rocketbank/core/realm/UserData;->realmSet$widgetToken(Ljava/lang/String;)V

    .line 17052
    iget-object v3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v3}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    .line 15271
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getLoginToken()Ljava/lang/String;

    move-result-object v4

    .line 18015
    invoke-virtual {v3, v4}, Lru/rocketbank/core/realm/UserData;->realmSet$login(Ljava/lang/String;)V

    .line 18052
    iget-object v3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v3}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    .line 15272
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object v4

    .line 19011
    invoke-virtual {v3, v4}, Lru/rocketbank/core/realm/UserData;->realmSet$avatar(Ljava/lang/String;)V

    .line 19052
    iget-object v3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v3}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    .line 15273
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 20013
    invoke-virtual {v3, v4}, Lru/rocketbank/core/realm/UserData;->realmSet$cover(Ljava/lang/String;)V

    .line 20052
    iget-object v3, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v3}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 15274
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 21021
    invoke-virtual {v3, v0}, Lru/rocketbank/core/realm/UserData;->realmSet$balance(Ljava/lang/Double;)V

    .line 21052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 15275
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v3

    .line 22018
    invoke-virtual {v0, v3}, Lru/rocketbank/core/realm/UserData;->realmSet$firstName(Ljava/lang/String;)V

    .line 22052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 15276
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 23019
    invoke-virtual {v0, v3}, Lru/rocketbank/core/realm/UserData;->realmSet$lastName(Ljava/lang/String;)V

    .line 23052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    if-eqz v2, :cond_3

    .line 15277
    invoke-virtual {v2}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lru/rocketbank/core/model/TariffModel;->getCobrandName()Ljava/lang/String;

    move-result-object v1

    .line 24029
    :cond_3
    invoke-virtual {v0, v1}, Lru/rocketbank/core/realm/UserData;->realmSet$cobrandName(Ljava/lang/String;)V

    .line 24052
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 15278
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 25027
    invoke-virtual {v0, v1}, Lru/rocketbank/core/realm/UserData;->realmSet$geneder(Ljava/lang/String;)V

    .line 15280
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    .line 25052
    iget-object v1, p0, Lru/rocketbank/core/user/Authorization;->authorizationStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v1}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    .line 15280
    invoke-interface {v0, v1}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    .line 224
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSound()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "lejeboker"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v2, "human"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v2, "gnom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v2, "orc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_4
    const-string v2, "rickmorty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    :goto_2
    move v1, v0

    .line 236
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/user/Authorization$setUserModel$1;->INSTANCE:Lru/rocketbank/core/user/Authorization$setUserModel$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 240
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 242
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization;->userModelSubject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2c5783ea -> :sswitch_4
        0x1aee0 -> :sswitch_3
        0x307d05 -> :sswitch_2
        0x5f0612d -> :sswitch_1
        0x21fc9af7 -> :sswitch_0
    .end sparse-switch
.end method
