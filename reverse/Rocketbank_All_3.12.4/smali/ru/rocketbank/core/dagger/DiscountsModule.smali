.class public final Lru/rocketbank/core/dagger/DiscountsModule;
.super Ljava/lang/Object;
.source "DiscountsModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountsModule.kt\nru/rocketbank/core/dagger/DiscountsModule\n*L\n1#1,23:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final discountsCache$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/dagger/DiscountsModule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "discountsCache"

    const-string v4, "getDiscountsCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/dagger/DiscountsModule;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    invoke-direct {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;-><init>()V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/DiscountsModule;->discountsCache$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final provideDiscountsCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;
    .locals 1

    .line 1000
    iget-object v0, p0, Lru/rocketbank/core/dagger/DiscountsModule;->discountsCache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    return-object v0
.end method
