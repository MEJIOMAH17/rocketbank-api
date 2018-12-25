.class public final Lru/rocketbank/core/utils/MonthNames;
.super Ljava/lang/Object;
.source "MonthNames.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonthNames.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonthNames.kt\nru/rocketbank/core/utils/MonthNames\n*L\n1#1,6:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lru/rocketbank/core/utils/MonthNames;

.field private static final NAMES$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/utils/MonthNames;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "NAMES"

    const-string v4, "getNAMES()[Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/utils/MonthNames;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 3
    new-instance v0, Lru/rocketbank/core/utils/MonthNames;

    invoke-direct {v0}, Lru/rocketbank/core/utils/MonthNames;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    .line 4
    sget-object v0, Lru/rocketbank/core/utils/MonthNames$NAMES$2;->INSTANCE:Lru/rocketbank/core/utils/MonthNames$NAMES$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/utils/MonthNames;->NAMES$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/core/utils/MonthNames;->NAMES$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
