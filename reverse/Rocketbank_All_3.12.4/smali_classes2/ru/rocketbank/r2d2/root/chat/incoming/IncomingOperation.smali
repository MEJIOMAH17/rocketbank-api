.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingOperation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingOperation.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingOperation\n*L\n1#1,47:1\n*E\n"
.end annotation


# instance fields
.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/utils/MoneyFormatter;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyFormatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p3}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const p2, 0x7f090298

    .line 21
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const p2, 0x7f090297

    .line 22
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090296

    .line 23
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 25
    invoke-static {p3}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;

    invoke-direct {p3, p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;Landroid/content/Context;)V

    check-cast p3, Lrx/functions/Action1;

    invoke-virtual {p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getOperation$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;)Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 0

    .line 14
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object p0
.end method

.method public static final synthetic access$setOperation$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method


# virtual methods
.method public final setOperation(Lru/rocketbank/core/model/message/OperationAttachment;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/OperationAttachment;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_3

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "it.displayMoney!!.currencyCode"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    return-void
.end method
