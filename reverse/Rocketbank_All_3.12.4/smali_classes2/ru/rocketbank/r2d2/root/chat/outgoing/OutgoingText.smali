.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;
.super Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;
.source "OutgoingText.kt"


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

.field private chatMessage:Lru/rocketbank/core/model/message/MessageIn;

.field private final retryView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryMessageListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    .line 20
    invoke-static {p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    move-result-object p1

    const-string v0, "LayoutMessageOutTextBinding.bind(itemView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V

    const p1, 0x7f0902e2

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText$1;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 1

    const-string v0, "messageText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getMessage()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getRetryVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->isFailed()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    return-object v0
.end method

.method public final getChatMessage()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method

.method public final getRetryView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final setChatMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method
