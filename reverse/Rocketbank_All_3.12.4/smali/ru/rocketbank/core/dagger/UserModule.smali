.class public final Lru/rocketbank/core/dagger/UserModule;
.super Ljava/lang/Object;
.source "UserModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/dagger/UserModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/dagger/UserModule$Companion;

.field private static final TAG:Ljava/lang/String; = "UserModule"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/dagger/UserModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/dagger/UserModule$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/dagger/UserModule;->Companion:Lru/rocketbank/core/dagger/UserModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UserModule"

    const-string v1, "UserModule"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static provideAppInfoManager(Landroid/content/Context;Lru/rocketbank/core/user/AppInformationStorage;)Lru/rocketbank/core/manager/AppInfoManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInformationStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating app info manager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lru/rocketbank/core/manager/AppInfoManager;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/manager/AppInfoManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/AppInformationStorage;)V

    return-object v0
.end method

.method public static provideAppInfoStorage(Lru/rocketbank/core/manager/KeyManager;)Lru/rocketbank/core/user/AppInformationStorage;
    .locals 2

    const-string v0, "keyManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating app info stoage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;

    invoke-direct {v0, p0}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;-><init>(Lru/rocketbank/core/manager/KeyManager;)V

    check-cast v0, Lru/rocketbank/core/user/AppInformationStorage;

    return-object v0
.end method

.method public static provideAuthStorage(Lru/rocketbank/core/manager/KeyManager;)Lru/rocketbank/core/user/AuthorizationStorage;
    .locals 2

    const-string v0, "keyManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating auth storage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lru/rocketbank/core/user/impl/RealmAuthStorage;

    invoke-direct {v0, p0}, Lru/rocketbank/core/user/impl/RealmAuthStorage;-><init>(Lru/rocketbank/core/manager/KeyManager;)V

    check-cast v0, Lru/rocketbank/core/user/AuthorizationStorage;

    return-object v0
.end method

.method public static provideAuthorization(Landroid/content/Context;Lru/rocketbank/core/network/api/UserApi;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/DataManager;Lru/rocketbank/core/manager/AnalyticsManager;Lru/rocketbank/core/manager/BankAccountManager;)Lru/rocketbank/core/user/Authorization;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizationStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankAccountManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating Authorization"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lru/rocketbank/core/user/Authorization;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lru/rocketbank/core/user/Authorization;-><init>(Landroid/content/Context;Lru/rocketbank/core/network/api/UserApi;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/DataManager;Lru/rocketbank/core/manager/AnalyticsManager;Lru/rocketbank/core/manager/BankAccountManager;)V

    return-object v0
.end method

.method public static provideBankAccountManager()Lru/rocketbank/core/manager/BankAccountManager;
    .locals 2

    .line 70
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating BankAccountManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lru/rocketbank/core/manager/BankAccountManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/BankAccountManager;-><init>()V

    return-object v0
.end method

.method public static provideCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 84
    new-instance v0, Lru/rocketbank/core/model/shop/CartStorage;

    invoke-direct {v0}, Lru/rocketbank/core/model/shop/CartStorage;-><init>()V

    return-object v0
.end method

.method public static provideWidgetManager(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/user/WidgetStorage;Lru/rocketbank/core/utils/MoneyFormatter;Lru/rocketbank/core/network/api/WidgetApi;)Lru/rocketbank/core/manager/WidgetManager;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyFormatter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating widget manager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lru/rocketbank/core/manager/WidgetManager;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/core/manager/WidgetManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/utils/MoneyFormatter;Lru/rocketbank/core/user/WidgetStorage;Lru/rocketbank/core/network/api/WidgetApi;)V

    return-object v0
.end method

.method public static provideWidgetStorage()Lru/rocketbank/core/user/WidgetStorage;
    .locals 2

    .line 48
    sget-object v0, Lru/rocketbank/core/dagger/UserModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating widget stoage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;

    invoke-direct {v0}, Lru/rocketbank/core/user/impl/RealmWidgetStorage;-><init>()V

    check-cast v0, Lru/rocketbank/core/user/WidgetStorage;

    return-object v0
.end method
