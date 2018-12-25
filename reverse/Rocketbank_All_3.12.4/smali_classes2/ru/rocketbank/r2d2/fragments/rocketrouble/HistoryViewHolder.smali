.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "HistoryViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryViewHolder.kt\nru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder\n*L\n1#1,79:1\n*E\n"
.end annotation


# instance fields
.field private final amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final comment:Lru/rocketbank/core/widgets/RocketTextView;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final nameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final rocketroubles:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090294

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const v0, 0x7f09004d

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09026c

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0900f3

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0902f9

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->rocketroubles:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_1

    .line 75
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_1
    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setConfirmationStatus(Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1103de

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1103e0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method

.method public final setRocketRoubles(D)V
    .locals 3

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    sget-object v1, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, p1, p2, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->rocketroubles:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
