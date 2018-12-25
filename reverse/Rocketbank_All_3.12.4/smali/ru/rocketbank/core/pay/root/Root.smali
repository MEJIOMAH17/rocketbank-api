.class public final Lru/rocketbank/core/pay/root/Root;
.super Ljava/lang/Object;
.source "Root.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Root.kt\nru/rocketbank/core/pay/root/Root\n*L\n1#1,35:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lru/rocketbank/core/pay/root/Root;

.field private static final rootChecker$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/pay/root/Root;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "rootChecker"

    const-string v4, "getRootChecker()Lcom/scottyab/rootbeer/RootBeer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/pay/root/Root;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 12
    new-instance v0, Lru/rocketbank/core/pay/root/Root;

    invoke-direct {v0}, Lru/rocketbank/core/pay/root/Root;-><init>()V

    sput-object v0, Lru/rocketbank/core/pay/root/Root;->INSTANCE:Lru/rocketbank/core/pay/root/Root;

    .line 14
    sget-object v0, Lru/rocketbank/core/pay/root/Root$rootChecker$2;->INSTANCE:Lru/rocketbank/core/pay/root/Root$rootChecker$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/pay/root/Root;->rootChecker$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canExecuteCommand(Ljava/lang/String;)Z
    .locals 1

    .line 21
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasRoot(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    sget-object v0, Lru/rocketbank/core/pay/root/Root;->rootChecker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scottyab/rootbeer/RootBeer;

    .line 29
    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeer;->isRootedWithoutBusyBoxCheck()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lru/rocketbank/core/pay/google/RootCheckException;

    invoke-direct {v1, v0}, Lru/rocketbank/core/pay/google/RootCheckException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 32
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_3

    const-string p0, "/system/xbin/which su"

    .line 1017
    invoke-static {p0}, Lru/rocketbank/core/pay/root/Root;->canExecuteCommand(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "/system/bin/which su"

    invoke-static {p0}, Lru/rocketbank/core/pay/root/Root;->canExecuteCommand(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "which su"

    invoke-static {p0}, Lru/rocketbank/core/pay/root/Root;->canExecuteCommand(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method
