.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;
.super Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;
.source "OutgoingOperation.kt"


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

.field private chatMessage:Lru/rocketbank/core/model/message/MessageIn;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field private final retryView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/utils/MoneyFormatter;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyFormatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryMessageListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p3, p4}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 31
    invoke-static {p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    move-result-object p2

    const-string v0, "LayoutMessageOutOperationBinding.bind(itemView)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    .line 32
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V

    const p2, 0x7f090298

    .line 34
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const p2, 0x7f090297

    .line 35
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090296

    .line 36
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 38
    invoke-static {p3}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation$1;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;Landroid/content/Context;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const p1, 0x7f0902e2

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation$2;

    invoke-direct {p2, p0, p4}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation$2;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getOperation$p(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;)Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 0

    .line 17
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object p0
.end method

.method public static final synthetic access$setOperation$p(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    return-object v0
.end method

.method public final getChatMessage()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method

.method public final getRetryView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final setChatMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 5

    const-string v0, "chatMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/OperationAttachment;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    .line 58
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/OperationAttachment;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 60
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isFailed()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_4

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationIconView:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 68
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    .line 72
    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v4, "operationVal.displayMoney!!.currencyCode"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2, p1, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->operationTotalView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
