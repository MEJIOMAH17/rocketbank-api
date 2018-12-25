.class public final Lru/rocketbank/core/network/rx/ErrorConverter;
.super Ljava/lang/Object;
.source "ErrorConverter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorConverter.kt\nru/rocketbank/core/network/rx/ErrorConverter\n*L\n1#1,49:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lru/rocketbank/core/network/rx/ErrorConverter;

.field public static final TAG:Ljava/lang/String; = "ErrorConverter"

.field private static final gson$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/network/rx/ErrorConverter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gson"

    const-string v4, "getGson()Lcom/google/gson/Gson;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/network/rx/ErrorConverter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 11
    new-instance v0, Lru/rocketbank/core/network/rx/ErrorConverter;

    invoke-direct {v0}, Lru/rocketbank/core/network/rx/ErrorConverter;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/rx/ErrorConverter;->INSTANCE:Lru/rocketbank/core/network/rx/ErrorConverter;

    .line 13
    sget-object v0, Lru/rocketbank/core/network/rx/ErrorConverter$gson$2;->INSTANCE:Lru/rocketbank/core/network/rx/ErrorConverter$gson$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/network/rx/ErrorConverter;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bodyExtract(Lru/rocketbank/core/network/rx/HttpException;Ljava/lang/String;)Lru/rocketbank/core/network/exception/RocketResponseException;
    .locals 4

    const-string v0, "httpException"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/network/rx/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/BaseRocketApplication;->needLockApplication()V

    const-string v1, "ErrorConverter"

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/core/network/rx/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    new-instance v1, Lru/rocketbank/core/network/exception/RocketResponseException;

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    sget-object v1, Lru/rocketbank/core/network/rx/ErrorConverter;->INSTANCE:Lru/rocketbank/core/network/rx/ErrorConverter;

    invoke-direct {v1}, Lru/rocketbank/core/network/rx/ErrorConverter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 38
    new-instance v1, Lru/rocketbank/core/network/exception/RocketResponseException;

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    goto :goto_1

    .line 40
    :cond_2
    new-instance v1, Lru/rocketbank/core/network/exception/RocketResponseException;

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, p1, v0}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "ExceptionConvertor"

    const-string v2, "Covert tot exception"

    .line 43
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance v1, Lru/rocketbank/core/network/exception/RocketResponseException;

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    :goto_1
    return-object v1
.end method

.method public static final covertCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "cause"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/rocketbank/core/network/exception/RocketResponseException;-><init>(Ljava/lang/Throwable;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 19
    :cond_0
    instance-of v0, p0, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object p0
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lru/rocketbank/core/network/rx/ErrorConverter;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method
