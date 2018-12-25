.class public abstract Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "APAbstractPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPAbstractPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APAbstractPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter\n*L\n1#1,13:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final androidPayApi$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "androidPayApi"

    const-string v4, "getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 11
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter$androidPayApi$2;->INSTANCE:Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter$androidPayApi$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;->androidPayApi$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method protected final getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAbstractPresenter;->androidPayApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/AndroidPayApi;

    return-object v0
.end method
