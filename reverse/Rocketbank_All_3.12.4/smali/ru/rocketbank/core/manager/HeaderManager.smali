.class public final Lru/rocketbank/core/manager/HeaderManager;
.super Ljava/lang/Object;
.source "HeaderManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/HeaderManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderManager.kt\nru/rocketbank/core/manager/HeaderManager\n*L\n1#1,114:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/core/manager/HeaderManager$Companion;


# instance fields
.field private final appInfoManager:Lru/rocketbank/core/manager/AppInfoManager;

.field private final authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

.field private fcmToken:Ljava/lang/String;

.field private final geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

.field private final md5$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/manager/HeaderManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "md5"

    const-string v4, "getMd5()Ljava/security/MessageDigest;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/manager/HeaderManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/core/manager/HeaderManager$Companion;

    invoke-direct {v0, v2}, Lru/rocketbank/core/manager/HeaderManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/HeaderManager;->Companion:Lru/rocketbank/core/manager/HeaderManager$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/AppInfoManager;Lru/rocketbank/core/manager/GeolocationManager;)V
    .locals 1

    const-string v0, "authStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geolocationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/HeaderManager;->authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    iput-object p2, p0, Lru/rocketbank/core/manager/HeaderManager;->appInfoManager:Lru/rocketbank/core/manager/AppInfoManager;

    iput-object p3, p0, Lru/rocketbank/core/manager/HeaderManager;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    .line 16
    sget-object p1, Lru/rocketbank/core/manager/HeaderManager$md5$2;->INSTANCE:Lru/rocketbank/core/manager/HeaderManager$md5$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/HeaderManager;->md5$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/manager/HeaderManager;->fcmToken:Ljava/lang/String;

    return-void
.end method

.method private static checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Lru/rocketbank/core/exceptions/RocketHeaderException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "header "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is empty"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lru/rocketbank/core/exceptions/RocketHeaderException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v1

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x7f

    if-ge v3, v0, :cond_4

    .line 80
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_3

    if-lt v7, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    :cond_3
    :goto_2
    new-instance p1, Lru/rocketbank/core/exceptions/RocketHeaderException;

    const-string v0, "Unexpected char %#04x at %d in header name: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    aput-object p0, v5, v4

    invoke-static {v0, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util.format(\"Unexpected \u2026 %s\", c.toInt(), i, name)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lru/rocketbank/core/exceptions/RocketHeaderException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    if-nez p1, :cond_5

    .line 87
    new-instance p1, Lru/rocketbank/core/exceptions/RocketHeaderException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value == null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lru/rocketbank/core/exceptions/RocketHeaderException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 89
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_9

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_6

    const/16 v8, 0x9

    if-ne v7, v8, :cond_7

    :cond_6
    if-lt v7, v6, :cond_8

    .line 93
    :cond_7
    new-instance v0, Lru/rocketbank/core/exceptions/RocketHeaderException;

    const-string v6, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    aput-object p0, v8, v4

    aput-object p1, v8, v5

    invoke-static {v6, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util.format(\"Unexpected \u2026.toInt(), i, name, value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lru/rocketbank/core/exceptions/RocketHeaderException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7037
    :cond_9
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getSignature(J)Ljava/lang/String;
    .locals 5

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6000
    iget-object v1, p0, Lru/rocketbank/core/manager/HeaderManager;->md5$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 6058
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0Jk211uvxyyYAFcSSsBK3+etfkDPKMz6asDqrzr+f7c=_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_dossantos"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 64
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Integer.toHexString(oneB\u2026oInt() and 0xFF or 0x100)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringBuilder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final getAuthStorage()Lru/rocketbank/core/user/AuthorizationStorage;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/manager/HeaderManager;->authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/manager/HeaderManager;->appInfoManager:Lru/rocketbank/core/manager/AppInfoManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/AppInfoManager;->getDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 2019
    iget-object v2, p0, Lru/rocketbank/core/manager/HeaderManager;->authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v2}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    .line 2031
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$token()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Token token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3019
    iget-object v5, p0, Lru/rocketbank/core/manager/HeaderManager;->authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v5}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v5

    .line 3031
    invoke-virtual {v5}, Lru/rocketbank/core/realm/UserData;->realmGet$token()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "HeaderManager"

    const-string v3, "Got problem? Yep"

    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    check-cast v1, Ljava/util/Map;

    const-string v2, "x-app-version"

    invoke-virtual {v0}, Lru/rocketbank/core/realm/DeviceInfoData;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-device-id"

    .line 4017
    invoke-virtual {v0}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-device-os"

    .line 36
    invoke-virtual {v0}, Lru/rocketbank/core/realm/DeviceInfoData;->getDeviceOs()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v2, "x-device-type"

    .line 38
    invoke-virtual {v0}, Lru/rocketbank/core/realm/DeviceInfoData;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lru/rocketbank/core/manager/HeaderManager;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 40
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    const-string v0, "x-device-type"

    const-string v2, "Unknown no_name device"

    .line 4037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_1
    const-string v2, "$receiver"

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pair"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/manager/HeaderManager;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "x-latitude"

    .line 46
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-longitude"

    .line 47
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "x-sig"

    .line 51
    invoke-direct {p0, v2, v3}, Lru/rocketbank/core/manager/HeaderManager;->getSignature(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-time"

    .line 52
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-device-token"

    .line 53
    iget-object v2, p0, Lru/rocketbank/core/manager/HeaderManager;->fcmToken:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/manager/HeaderManager;->authStorage:Lru/rocketbank/core/user/AuthorizationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setFcmToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/manager/HeaderManager;->fcmToken:Ljava/lang/String;

    return-void
.end method
