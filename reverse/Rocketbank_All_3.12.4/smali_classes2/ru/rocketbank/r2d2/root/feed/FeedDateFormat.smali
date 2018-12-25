.class public final Lru/rocketbank/r2d2/root/feed/FeedDateFormat;
.super Ljava/lang/Object;
.source "FeedDateFormat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedDateFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedDateFormat.kt\nru/rocketbank/r2d2/root/feed/FeedDateFormat\n*L\n1#1,8:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

.field private static final dayDateFormat$delegate:Lkotlin/Lazy;

.field private static final yesterdayDateFormat$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "yesterdayDateFormat"

    const-string v4, "getYesterdayDateFormat()Ljava/text/SimpleDateFormat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "dayDateFormat"

    const-string v4, "getDayDateFormat()Ljava/text/SimpleDateFormat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    .line 6
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->yesterdayDateFormat$delegate:Lkotlin/Lazy;

    .line 7
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$dayDateFormat$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat$dayDateFormat$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->dayDateFormat$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDayDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->dayDateFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getYesterdayDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->yesterdayDateFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method
