.class public final Lru/rocketbank/core/dagger/GeoLocationModule;
.super Ljava/lang/Object;
.source "GeoLocationModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLocationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLocationModule.kt\nru/rocketbank/core/dagger/GeoLocationModule\n*L\n1#1,30:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final geolocation$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/dagger/GeoLocationModule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "geolocation"

    const-string v4, "getGeolocation()Lru/rocketbank/core/manager/GeolocationManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/dagger/GeoLocationModule;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lru/rocketbank/core/manager/GeolocationManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/GeolocationManager;-><init>()V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/GeoLocationModule;->geolocation$delegate:Lkotlin/Lazy;

    const-string v0, "GeoLocationModule"

    const-string v1, "GeoLocationModule"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final provideAuthorization()Lru/rocketbank/core/manager/GeolocationManager;
    .locals 2

    const-string v0, "GeoLocation"

    const-string v1, "Creating GeoLocationModule"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lru/rocketbank/core/dagger/GeoLocationModule;->geolocation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/GeolocationManager;

    return-object v0
.end method
