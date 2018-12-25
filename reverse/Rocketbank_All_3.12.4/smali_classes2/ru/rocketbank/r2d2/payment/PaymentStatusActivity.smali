.class public final Lru/rocketbank/r2d2/payment/PaymentStatusActivity;
.super Lru/rocketbank/r2d2/activities/StatusActivity;
.source "PaymentStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/StatusActivity<",
        "Lru/rocketbank/core/network/model/PaymentResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentStatusActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentStatusActivity.kt\nru/rocketbank/r2d2/payment/PaymentStatusActivity\n*L\n1#1,47:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;

.field private static final KEY_DATA:Ljava/lang/String; = "KEY_DATA"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

.field private requestFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final successStatusText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;-><init>()V

    const v0, 0x7f11032e

    .line 29
    iput v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->successStatusText:I

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getOperation()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/PaymentResponse;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->requestFields:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v1, "requestFields"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/util/Map;

    const-string v1, "app_uniq_timestamp_hash"

    sget-object v2, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    invoke-virtual {v2}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez v0, :cond_1

    const-string v1, "providersApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->requestFields:Ljava/util/HashMap;

    if-nez v1, :cond_2

    const-string v2, "requestFields"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/ProvidersApi;->payments(Ljava/util/Map;)Lrx/Observable;

    move-result-object v0

    const-string v1, "providersApi.payments(requestFields)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getSuccessStatusText()I
    .locals 1

    .line 29
    iget v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->successStatusText:I

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->requestFields:Ljava/util/HashMap;

    .line 26
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
