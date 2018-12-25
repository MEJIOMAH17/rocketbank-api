.class public final Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;
.super Lru/rocketbank/r2d2/activities/StatusActivity;
.source "ChargePayStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/StatusActivity<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;

.field private static final KEY_DATA:Ljava/lang/String; = "KEY_DATA"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

.field private final successStatusText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;-><init>()V

    const v0, 0x7f11032e

    .line 22
    iput v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->successStatusText:I

    return-void
.end method

.method public static final synthetic access$getKEY_DATA$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->KEY_DATA:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

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
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    if-nez v1, :cond_0

    const-string v2, "chargeModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeModel;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/RocketAPI;->chargesPay(ILjava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-string v1, "rocketApi.chargesPay(chargeModel.id ?: -1, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getSuccessStatusText()I
    .locals 1

    .line 22
    iget v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->successStatusText:I

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtra<ChargeModel>(KEY_DATA)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/charge/ChargeModel;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    .line 19
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
