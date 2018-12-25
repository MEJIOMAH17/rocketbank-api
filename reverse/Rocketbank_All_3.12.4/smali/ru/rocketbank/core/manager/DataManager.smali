.class public final Lru/rocketbank/core/manager/DataManager;
.super Lru/rocketbank/core/manager/DataManagerImpl;
.source "DataManager.kt"


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/CurrencyManager;Lru/rocketbank/core/network/api/ProvidersApi;)V
    .locals 1

    const-string v0, "currencyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "providersApi"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2}, Lru/rocketbank/core/manager/DataManagerImpl;-><init>(Lru/rocketbank/core/network/api/ProvidersApi;)V

    return-void
.end method
