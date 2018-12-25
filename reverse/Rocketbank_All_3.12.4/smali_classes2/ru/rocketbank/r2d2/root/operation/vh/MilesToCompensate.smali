.class public final Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "MilesToCompensate.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMilesToCompensate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MilesToCompensate.kt\nru/rocketbank/r2d2/root/operation/vh/MilesToCompensate\n*L\n1#1,77:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

.field private final currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private final data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    .line 18
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-result-object p1

    const-string p2, "LayoutMilesCompensationBinding.bind(itemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->binding:Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    .line 19
    new-instance p1, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    .line 21
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 22
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->binding:Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->setData(Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;)V

    .line 30
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->binding:Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;)V

    return-void
.end method

.method private final setupHelpText(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 14

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->binding:Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "binding.description"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 53
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMiles()Lru/rocketbank/core/model/dto/operations/Miles;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Miles;->getAmount()F

    move-result v2

    float-to-double v2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 56
    :goto_0
    iget-object v4, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    sget-object v5, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 56
    invoke-virtual {v4, v2, v3, v5, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v4}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v7, "operation.money!!.currencyCode"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, p1, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100fe

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v4, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v4, v1, v0}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    .line 62
    new-instance v5, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v5, v1, v0}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    const-string v0, "formatString"

    .line 64
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, v2

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, p1

    move v10, v2

    .line 67
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    .line 70
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12

    .line 72
    invoke-virtual {v6, v4, v1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 73
    invoke-virtual {v6, v5, v3, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getDescription()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 4

    .line 34
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result v0

    .line 38
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->data:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getRocketText()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_2

    .line 47
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->setupHelpText(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_2
    return-void
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method public final getOperationPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-object v0
.end method

.method public final onCompensation()V
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->compensate()V

    return-void
.end method
