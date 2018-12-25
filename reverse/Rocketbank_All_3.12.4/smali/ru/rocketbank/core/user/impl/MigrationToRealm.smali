.class public final Lru/rocketbank/core/user/impl/MigrationToRealm;
.super Ljava/lang/Object;
.source "MigrationToRealm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMigrationToRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrationToRealm.kt\nru/rocketbank/core/user/impl/MigrationToRealm\n*L\n1#1,85:1\n*E\n"
.end annotation


# static fields
.field private static final ACTIVATION:Ljava/lang/String; = "activation"

.field private static final AVATAR:Ljava/lang/String; = "avatar"

.field private static final COVER:Ljava/lang/String; = "cover"

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final INIT:Ljava/lang/String; = "init"

.field public static final INSTANCE:Lru/rocketbank/core/user/impl/MigrationToRealm;

.field private static final LOGIN:Ljava/lang/String; = "login"

.field private static final PERMALINK:Ljava/lang/String; = "permalink"

.field private static final PROVIDERS_TIME:Ljava/lang/String; = "providers_time_87"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lru/rocketbank/core/user/impl/MigrationToRealm;

    invoke-direct {v0}, Lru/rocketbank/core/user/impl/MigrationToRealm;-><init>()V

    sput-object v0, Lru/rocketbank/core/user/impl/MigrationToRealm;->INSTANCE:Lru/rocketbank/core/user/impl/MigrationToRealm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static migrate(Landroid/content/Context;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/AppInfoManager;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizationStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "MIGARATE_XXX"

    .line 29
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 30
    sget-object v2, Lru/rocketbank/core/user/impl/MigrationToRealm;->INIT:Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "sharedPreferences"

    .line 35
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    sget-object v2, Lru/rocketbank/core/user/impl/MigrationToRealm;->AVATAR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    sget-object v4, Lru/rocketbank/core/user/impl/MigrationToRealm;->COVER:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1062
    sget-object v5, Lru/rocketbank/core/user/impl/MigrationToRealm;->FIRST_NAME:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1063
    sget-object v6, Lru/rocketbank/core/user/impl/MigrationToRealm;->LOGIN:Ljava/lang/String;

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1064
    sget-object v7, Lru/rocketbank/core/user/impl/MigrationToRealm;->STATUS:Ljava/lang/String;

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1065
    sget-object v8, Lru/rocketbank/core/user/impl/MigrationToRealm;->TOKEN:Ljava/lang/String;

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1067
    sget-object v9, Lru/rocketbank/core/user/impl/MigrationToRealm;->ACTIVATION:Ljava/lang/String;

    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1068
    sget-object v10, Lru/rocketbank/core/user/impl/MigrationToRealm;->PROVIDERS_TIME:Ljava/lang/String;

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1069
    sget-object v11, Lru/rocketbank/core/user/impl/MigrationToRealm;->DEVICE_ID:Ljava/lang/String;

    invoke-interface {v0, v11, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1071
    new-instance v12, Lru/rocketbank/core/realm/UserData;

    invoke-direct {v12}, Lru/rocketbank/core/realm/UserData;-><init>()V

    .line 2015
    invoke-virtual {v12, v6}, Lru/rocketbank/core/realm/UserData;->realmSet$login(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v12, v5}, Lru/rocketbank/core/realm/UserData;->realmSet$firstName(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v12, v8}, Lru/rocketbank/core/realm/UserData;->realmSet$token(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v12, v7}, Lru/rocketbank/core/realm/UserData;->realmSet$status(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {v12, v2}, Lru/rocketbank/core/realm/UserData;->realmSet$avatar(Ljava/lang/String;)V

    .line 4013
    invoke-virtual {v12, v4}, Lru/rocketbank/core/realm/UserData;->realmSet$cover(Ljava/lang/String;)V

    .line 4016
    invoke-virtual {v12, v7}, Lru/rocketbank/core/realm/UserData;->realmSet$status(Ljava/lang/String;)V

    .line 4033
    invoke-virtual {v12, v9}, Lru/rocketbank/core/realm/UserData;->realmSet$activation(Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v12, v10}, Lru/rocketbank/core/realm/UserData;->realmSet$providersHash(I)V

    .line 4037
    invoke-virtual {v12, v11}, Lru/rocketbank/core/realm/UserData;->realmSet$deviceId(Ljava/lang/String;)V

    .line 1083
    invoke-interface {p1, v12}, Lru/rocketbank/core/user/AuthorizationStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V

    .line 4044
    invoke-virtual {p2}, Lru/rocketbank/core/manager/AppInfoManager;->generateDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object p1

    .line 4046
    sget-object v2, Lru/rocketbank/core/user/impl/MigrationToRealm;->DEVICE_ID:Ljava/lang/String;

    .line 5017
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v4

    .line 4046
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4047
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "ANDROID"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v6, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ANDROID_"

    .line 4048
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4053
    :cond_2
    sget-object v1, Lru/rocketbank/core/user/impl/MigrationToRealm;->ACTIVATION:Ljava/lang/String;

    .line 6013
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$activation()Ljava/lang/String;

    move-result-object v3

    .line 4053
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7013
    invoke-virtual {p1, v1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmSet$activation(Ljava/lang/String;)V

    .line 7017
    invoke-virtual {p1, v2}, Lru/rocketbank/core/realm/DeviceInfoData;->realmSet$deviceId(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {p2, p1}, Lru/rocketbank/core/manager/AppInfoManager;->updateDeviceData(Lru/rocketbank/core/realm/DeviceInfoData;)V

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Lru/rocketbank/core/user/impl/MigrationToRealm;->INIT:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-void
.end method
