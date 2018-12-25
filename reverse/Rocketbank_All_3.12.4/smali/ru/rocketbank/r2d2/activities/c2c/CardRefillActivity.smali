.class public final Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "CardRefillActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/ProcessHandler;
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/ProcessHandler;",
        "Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;"
    }
.end annotation


# static fields
.field private static final AMOUNT:Ljava/lang/String; = "AMOUNT"

.field private static final CARD_BODY:Ljava/lang/String; = "CARD_BODY"

.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

.field private static final PROCESSING_EXECUTED:Ljava/lang/String; = "PROC_EXECED"

.field private static final STATUS_APPROVED:I = 0x1

.field private static final STATUS_ERROR:I = 0x0

.field private static final STATUS_PROCESSING:I = 0x2

.field private static final STATUS_UNKNOWN:I = 0x4

.field private static final STATUS_WTF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CardRefill"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

.field private amount:D

.field private cardBody:Lru/rocketbank/core/network/model/CardBody;

.field private processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

.field private processingExecuted:Z

.field private toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAMOUNT$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->AMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCARD_BODY$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->CARD_BODY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROCESSING_EXECUTED$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->PROCESSING_EXECUTED:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTATUS_APPROVED$cp()I
    .locals 1

    .line 24
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_APPROVED:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_ERROR$cp()I
    .locals 1

    .line 24
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_ERROR:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESSING$cp()I
    .locals 1

    .line 24
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_PROCESSING:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_UNKNOWN$cp()I
    .locals 1

    .line 24
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_UNKNOWN:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_WTF$cp()I
    .locals 1

    .line 24
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_WTF:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getAMOUNT()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->AMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCARD_BODY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->CARD_BODY:Ljava/lang/String;

    return-object v0
.end method

.method public static final getPROCESSING_EXECUTED()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->PROCESSING_EXECUTED:Ljava/lang/String;

    return-object v0
.end method

.method public static final getSTATUS_APPROVED()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_APPROVED:I

    return v0
.end method

.method public static final getSTATUS_ERROR()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_ERROR:I

    return v0
.end method

.method public static final getSTATUS_PROCESSING()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_PROCESSING:I

    return v0
.end method

.method public static final getSTATUS_UNKNOWN()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_UNKNOWN:I

    return v0
.end method

.method public static final getSTATUS_WTF()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_WTF:I

    return v0
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final newInstance(Landroid/content/Context;DLru/rocketbank/core/network/model/CardBody;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;->newInstance(Landroid/content/Context;DLru/rocketbank/core/network/model/CardBody;)V

    return-void
.end method

.method public static bridge synthetic showResult$default(Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 158
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->showResult(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->createPresenter()Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;
    .locals 2

    .line 34
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "c07235a5-e20e-4dc0-b47b-a1b9d6402171"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"c07235a\u2026-4dc0-b47b-a1b9d6402171\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    return-object v0
.end method

.method public final errorResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const-string v1, "activityCardTransferProcess.loader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_1

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getMessageText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez p1, :cond_2

    const-string v0, "processActivityData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getButtonsVisible()Landroid/databinding/ObservableInt;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 177
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez p1, :cond_3

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getRetryVisible()Landroid/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public final handleResult(Lru/rocketbank/core/model/card/Card2CardRefillResponseData;Z)V
    .locals 4

    const-string v0, "cardTransfer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->getErrors()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->getHtml()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->getId()I

    move-result p1

    if-eqz v0, :cond_3

    const-string v3, "error"

    .line 130
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_ERROR:I

    goto :goto_0

    :cond_0
    const-string v3, "approved"

    .line 132
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_APPROVED:I

    goto :goto_0

    :cond_1
    const-string v3, "processing"

    .line 134
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_PROCESSING:I

    goto :goto_0

    .line 137
    :cond_2
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_UNKNOWN:I

    goto :goto_0

    .line 140
    :cond_3
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_WTF:I

    .line 143
    :goto_0
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->showResult(ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 147
    iget-boolean p2, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processingExecuted:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    if-eqz p2, :cond_5

    .line 152
    sget p2, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_PROCESSING:I

    if-ne v0, p2, :cond_5

    if-eqz v2, :cond_5

    .line 153
    iput-boolean v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processingExecuted:Z

    .line 154
    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2, v0, p1, v2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->startActivity(Landroid/app/Activity;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    .line 206
    sget-object p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getRESULT()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getRESULT_FAILED()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 207
    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getRESULT_OK()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->successResult()V

    return-void

    .line 210
    :cond_0
    sget-object p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;->getERROR()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resultStatus"

    .line 211
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onClosePressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v1}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;-><init>(II)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    .line 54
    new-instance v0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const v2, 0x7f1103b4

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c002d

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026ty_card_transfer_process)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/ProcessHandler;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setProcessHandler(Lru/rocketbank/r2d2/data/binding/ProcessHandler;)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_1

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_2

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v1, :cond_3

    const-string v2, "toolbarBindingData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_4

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v1, :cond_5

    const-string v2, "processActivityData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->setProcessData(Lru/rocketbank/r2d2/data/binding/ProcessActivityData;)V

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_6

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->include:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->AMOUNT:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->amount:D

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->CARD_BODY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtra(CARD_BODY)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/network/model/CardBody;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->cardBody:Lru/rocketbank/core/network/model/CardBody;

    if-eqz p1, :cond_9

    .line 67
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->PROCESSING_EXECUTED:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processingExecuted:Z

    :cond_9
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x7f11031c

    if-eqz p1, :cond_5

    .line 97
    instance-of v1, p1, Lru/rocketbank/core/utils/presenter/SingleCallRestartedException;

    if-eqz v1, :cond_0

    const p1, 0x7f1103d0

    .line 98
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.request_is_interrupted)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    instance-of v1, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v1, :cond_4

    .line 101
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f110309

    .line 102
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.network_error)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response.description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_2
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.no_luck_try_again_later)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_3
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.no_luck_try_again_later)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 118
    :cond_5
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.no_luck_try_again_later)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    return-void
.end method

.method public final onRestore(Lru/rocketbank/core/model/card/Card2CardRefillResponseData;)V
    .locals 2

    const-string v0, "cardTransfer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->TAG:Ljava/lang/String;

    const-string v1, "transfer recevied"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->handleResult(Lru/rocketbank/core/model/card/Card2CardRefillResponseData;Z)V

    return-void
.end method

.method protected final onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->startCall()V

    return-void
.end method

.method public final onRetryPressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->retryRefill()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->PROCESSING_EXECUTED:Ljava/lang/String;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processingExecuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onSuccess(Lru/rocketbank/core/model/card/Card2CardRefillResponseData;)V
    .locals 1

    const-string v0, "cardTransfer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->handleResult(Lru/rocketbank/core/model/card/Card2CardRefillResponseData;Z)V

    return-void
.end method

.method public final retryRefill()V
    .locals 3

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const-string v1, "activityCardTransferProcess.loader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_1

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getMessageText()Landroid/databinding/ObservableField;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_2

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getButtonsVisible()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_3

    const-string v2, "processActivityData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getRetryVisible()Landroid/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 188
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->resetAskMoney()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processingExecuted:Z

    .line 190
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->startCall()V

    return-void
.end method

.method public final showResult(ILjava/lang/String;)V
    .locals 1

    .line 160
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_APPROVED:I

    if-ne p1, v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->successResult()V

    return-void

    .line 164
    :cond_0
    sget v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->STATUS_ERROR:I

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const-string p2, ""

    .line 166
    :cond_1
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->errorResult(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final startCall()V
    .locals 8

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    iget-wide v2, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->amount:D

    .line 79
    iget-object v4, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->cardBody:Lru/rocketbank/core/network/model/CardBody;

    if-nez v4, :cond_0

    const-string v0, "cardBody"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 81
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$2;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 82
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$3;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$startCall$3;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 78
    invoke-virtual/range {v1 .. v7}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->askMoney(DLru/rocketbank/core/network/model/CardBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final successResult()V
    .locals 2

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->activityCardTransferProcess:Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferProcess"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const-string v1, "activityCardTransferProcess.loader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_1

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getMessageText()Landroid/databinding/ObservableField;

    move-result-object v0

    const v1, 0x7f1102e8

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_2

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getButtonsVisible()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->processActivityData:Lru/rocketbank/r2d2/data/binding/ProcessActivityData;

    if-nez v0, :cond_3

    const-string v1, "processActivityData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->getRetryVisible()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method
