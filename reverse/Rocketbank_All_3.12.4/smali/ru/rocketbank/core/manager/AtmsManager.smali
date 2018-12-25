.class public final Lru/rocketbank/core/manager/AtmsManager;
.super Ljava/lang/Object;
.source "AtmsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/AtmsManager$RecreateListener;,
        Lru/rocketbank/core/manager/AtmsManager$Companion;
    }
.end annotation


# static fields
.field private static final ATMS_FILE_NAME:Ljava/lang/String; = "atms99.realm"

.field private static final ATMS_PREF:Ljava/lang/String; = "ATMS_PREF_4"

.field private static final ATMS_UPDATE_TIME:Ljava/lang/String; = "ATMS_UPDATE_TIME_4"

.field public static final Companion:Lru/rocketbank/core/manager/AtmsManager$Companion;

.field private static final LAST_VERSION_CODE:Ljava/lang/String; = "LAST_VERSION_CODE_X_X"

.field private static final TAG_ATMS:Ljava/lang/String; = "ATMS"


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private context:Landroid/content/Context;

.field private realmConfiguration:Lio/realm/RealmConfiguration;

.field private final rocketApi:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/AtmsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/AtmsManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/AtmsManager;->Companion:Lru/rocketbank/core/manager/AtmsManager$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "authorization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->authorization:Lru/rocketbank/core/user/Authorization;

    iput-object p2, p0, Lru/rocketbank/core/manager/AtmsManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public static final synthetic access$getATMS_PREF$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getATMS_UPDATE_TIME$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->ATMS_UPDATE_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lru/rocketbank/core/manager/AtmsManager;)Landroid/content/Context;
    .locals 1

    .line 22
    iget-object p0, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG_ATMS$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->TAG_ATMS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$loadFromFile(Lru/rocketbank/core/manager/AtmsManager;Ljava/io/Reader;)Ljava/lang/Long;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->loadFromFile(Ljava/io/Reader;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getConfiguration(Landroid/content/Context;)Lio/realm/RealmConfiguration;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance p0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {p0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    .line 246
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->ATMS_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object p0

    .line 248
    new-instance v0, Lru/rocketbank/core/realm/module/StorageModule;

    invoke-direct {v0}, Lru/rocketbank/core/realm/module/StorageModule;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object p0

    const-string v0, "RealmConfiguration.Build\u2026\n                .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final loadFromFile(Ljava/io/Reader;)Ljava/lang/Long;
    .locals 9

    .line 97
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 98
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 1241
    iget-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v2, Lru/rocketbank/core/manager/AtmsManager;->ATMS_UPDATE_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 101
    const-class p1, Lru/rocketbank/core/model/dto/Atms;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/Atms;

    const-string v0, "atms"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Atms;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Atms;->getTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v8, v1, v6

    if-gtz v8, :cond_1

    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    const-string v1, "realm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/Realm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 110
    :cond_1
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 112
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Atms;->getAtms()Ljava/util/List;

    move-result-object v1

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Atms;->getAtms()Ljava/util/List;

    move-result-object v2

    const-string v4, "atms.atms"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_3

    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/Atm;

    .line 117
    new-instance v5, Lru/rocketbank/core/realm/RealmAtm;

    invoke-direct {v5}, Lru/rocketbank/core/realm/RealmAtm;-><init>()V

    .line 118
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2026
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$name(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 3024
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$address(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getEur()Ljava/lang/Boolean;

    move-result-object v6

    .line 4016
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isEur(Ljava/lang/Boolean;)V

    .line 121
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getHidden()Ljava/lang/Boolean;

    move-result-object v6

    .line 4019
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isHidden(Ljava/lang/Boolean;)V

    .line 122
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getRur()Ljava/lang/Boolean;

    move-result-object v6

    .line 4020
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isRur(Ljava/lang/Boolean;)V

    .line 123
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getId()I

    move-result v6

    .line 5015
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$id(I)V

    .line 124
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getLat()F

    move-result v6

    .line 5022
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$lat(F)V

    .line 125
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getLon()F

    move-result v6

    .line 5023
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$lon(F)V

    .line 126
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getHours()Ljava/lang/String;

    move-result-object v6

    .line 5025
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$hours(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getUsd()Ljava/lang/Boolean;

    move-result-object v6

    .line 6021
    invoke-virtual {v5, v6}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isUsd(Ljava/lang/Boolean;)V

    .line 128
    invoke-virtual {v4}, Lru/rocketbank/core/model/Atm;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "none"

    :cond_2
    const-string v6, "<set-?>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6027
    invoke-virtual {v5, v4}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$type(Ljava/lang/String;)V

    .line 130
    check-cast v5, Lio/realm/RealmModel;

    invoke-virtual {v0, v5}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 135
    :try_start_1
    invoke-virtual {v0}, Lio/realm/Realm;->cancelTransaction()V

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1

    .line 142
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Atms;->getTime()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final loadFromFile(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->TAG_ATMS:Ljava/lang/String;

    const-string v1, "load from file"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "atms.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;-><init>(Lru/rocketbank/core/manager/AtmsManager;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 71
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 72
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 73
    new-instance v1, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;-><init>(Lru/rocketbank/core/manager/AtmsManager;Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    check-cast v1, Lrx/Observer;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method

.method public static onDestroy()V
    .locals 2

    .line 93
    sget-object v0, Lru/rocketbank/core/manager/AtmsManager;->TAG_ATMS:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final refreshData(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
    .locals 4

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1237
    iget-object v1, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v3, "context"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v3, Lru/rocketbank/core/manager/AtmsManager;->LAST_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 38
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v1, v2, :cond_4

    .line 39
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->loadFromFile(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    .line 40
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->setLastVersionCode(I)V

    return-void

    .line 43
    :cond_3
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->loadFromFile(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    :cond_4
    return-void
.end method

.method private final setLastVersionCode(I)V
    .locals 3

    .line 233
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/AtmsManager;->LAST_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lru/rocketbank/core/manager/AtmsManager;->getConfiguration(Landroid/content/Context;)Lio/realm/RealmConfiguration;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->realmConfiguration:Lio/realm/RealmConfiguration;

    const/4 p1, 0x0

    .line 1034
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->refreshData(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    return-void
.end method

.method public final recreateRealmWithListener(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "context.filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/manager/AtmsManager;->ATMS_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 148
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager;->refreshData(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    return-void
.end method

.method public final requireUpdate(I)V
    .locals 7

    .line 10241
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/AtmsManager;->ATMS_UPDATE_TIME:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    int-to-long v5, p1

    cmp-long p1, v5, v0

    if-nez p1, :cond_1

    return-void

    .line 201
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 11065
    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "user_feed"

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 205
    :cond_3
    iget-object p1, p0, Lru/rocketbank/core/manager/AtmsManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 11241
    iget-object v5, p0, Lru/rocketbank/core/manager/AtmsManager;->context:Landroid/content/Context;

    if-nez v5, :cond_4

    const-string v6, "context"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v6, Lru/rocketbank/core/manager/AtmsManager;->ATMS_PREF:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v5, Lru/rocketbank/core/manager/AtmsManager;->ATMS_UPDATE_TIME:Ljava/lang/String;

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 205
    invoke-interface {p1, v2, v3}, Lru/rocketbank/core/network/api/RocketAPI;->getAtmsStartFrom(J)Lrx/Observable;

    move-result-object p1

    .line 206
    new-instance v2, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;

    invoke-direct {v2, p0, v0, v1}, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$1;-><init>(Lru/rocketbank/core/manager/AtmsManager;J)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {p1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 214
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 215
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 216
    new-instance v0, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/AtmsManager$requireUpdate$2;-><init>(Lru/rocketbank/core/manager/AtmsManager;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final updateMap(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;)V"
        }
    .end annotation

    const-string v0, "atmList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 159
    :try_start_0
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    const/4 v1, 0x0

    .line 161
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/Atm;

    .line 166
    new-instance v4, Lru/rocketbank/core/realm/RealmAtm;

    invoke-direct {v4}, Lru/rocketbank/core/realm/RealmAtm;-><init>()V

    .line 168
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getId()I

    move-result v5

    .line 7015
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$id(I)V

    .line 169
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7026
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$name(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 8024
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$address(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getEur()Ljava/lang/Boolean;

    move-result-object v5

    .line 9016
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isEur(Ljava/lang/Boolean;)V

    .line 172
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getHidden()Ljava/lang/Boolean;

    move-result-object v5

    .line 9019
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isHidden(Ljava/lang/Boolean;)V

    .line 173
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getRur()Ljava/lang/Boolean;

    move-result-object v5

    .line 9020
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isRur(Ljava/lang/Boolean;)V

    .line 174
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getLat()F

    move-result v5

    .line 9022
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$lat(F)V

    .line 175
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getLon()F

    move-result v5

    .line 9023
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$lon(F)V

    .line 176
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getHours()Ljava/lang/String;

    move-result-object v5

    .line 9025
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$hours(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getUsd()Ljava/lang/Boolean;

    move-result-object v5

    .line 10021
    invoke-virtual {v4, v5}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$isUsd(Ljava/lang/Boolean;)V

    .line 178
    invoke-virtual {v3}, Lru/rocketbank/core/model/Atm;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "none"

    :cond_0
    const-string v5, "<set-?>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10027
    invoke-virtual {v4, v3}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$type(Ljava/lang/String;)V

    .line 180
    check-cast v4, Lio/realm/RealmModel;

    invoke-virtual {v0, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    :try_start_1
    sget-object v1, Lru/rocketbank/core/manager/AtmsManager;->TAG_ATMS:Ljava/lang/String;

    const-string v2, "Failed update"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {v0}, Lio/realm/Realm;->cancelTransaction()V

    .line 188
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1
.end method
