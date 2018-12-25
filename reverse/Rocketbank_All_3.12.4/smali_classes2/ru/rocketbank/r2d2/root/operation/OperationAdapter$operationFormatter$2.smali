.class final Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OperationAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/OperationAdapter;-><init>(Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/rocketbank/core/utils/MoneyFormatter;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;->INSTANCE:Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;->invoke()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 4

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    .line 32
    new-instance v1, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 33
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v3

    .line 34
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    .line 32
    invoke-direct {v1, v2, v3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    return-object v1
.end method
