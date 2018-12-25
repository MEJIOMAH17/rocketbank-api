.class public final Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "MilesCompensated.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMilesCompensated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MilesCompensated.kt\nru/rocketbank/r2d2/root/operation/vh/MilesCompensated\n*L\n1#1,62:1\n*E\n"
.end annotation


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private final descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final rocketAutofitTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902ed

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->rocketAutofitTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const v0, 0x7f09012f

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 22
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 23
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 24
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method private final setupHelpText(Lru/rocketbank/core/model/UserModel;)V
    .locals 12

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 44
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result p1

    .line 48
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    float-to-double v3, p1

    sget-object p1, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    .line 48
    invoke-virtual {v2, v3, v4, p1, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const-string v2, ""

    invoke-virtual {p1, v3, v4, v2, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const v4, 0x7f1100fd

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v3, v1, v0}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    const-string v0, "formatString"

    .line 55
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    .line 57
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12

    .line 59
    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 5

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    double-to-float v1, v1

    .line 33
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    int-to-double v3, v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "operation.money!!.currencyCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->rocketAutofitTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 37
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->setupHelpText(Lru/rocketbank/core/model/UserModel;)V

    return-void

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method

.method public final getDescriptionView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method public final getRocketAutofitTextView()Lru/rocketbank/core/widgets/RocketAutofitTextView;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->rocketAutofitTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    return-object v0
.end method
