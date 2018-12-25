.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingText.kt"


# instance fields
.field private messageTextView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f09025e

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;->messageTextView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)V
    .locals 2

    const-string v0, "messageText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;->messageTextView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "messageTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;->replaceImage(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final replaceImage(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .line 22
    new-instance v0, Landroid/text/SpannableString;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
