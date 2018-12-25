.class public abstract Lru/rocketbank/r2d2/charges/ChargeInfoActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChargeInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

.field private static final KEY_CHARGE:Ljava/lang/String; = "KEY_CHARGE"

.field private static final REQUEST_CODE:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_CHARGE$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->KEY_CHARGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .line 18
    sget v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->REQUEST_CODE:I

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getChargeModel()Lru/rocketbank/core/model/charge/ChargeModel;
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    if-nez v0, :cond_0

    const-string v1, "chargeModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    sget p3, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->REQUEST_CODE:I

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 53
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    sget-object p3, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->KEY_CHARGE:Ljava/lang/String;

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    if-nez v0, :cond_0

    const-string v1, "chargeModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtr\u2026tailsActivity.KEY_CHARGE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/charge/ChargeModel;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    .line 32
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 36
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 37
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f110368

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 38
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;-><init>(Lru/rocketbank/r2d2/charges/ChargeInfoActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->chargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    return-void
.end method
