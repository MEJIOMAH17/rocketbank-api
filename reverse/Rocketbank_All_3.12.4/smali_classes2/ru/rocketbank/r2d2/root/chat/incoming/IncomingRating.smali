.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingRating.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;


# instance fields
.field private final commentView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

.field private onRatingChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

.field private rating:Lru/rocketbank/core/network/model/Rating;

.field private final ratingView:Landroid/widget/RatingBar;

.field private final textView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/r2d2/root/chat/MessageManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p4, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    const p1, 0x7f0902c6

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.RatingBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->ratingView:Landroid/widget/RatingBar;

    const p1, 0x7f090381

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0900f3

    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;Landroid/support/v4/app/FragmentManager;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->ratingView:Landroid/widget/RatingBar;

    new-instance p2, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)V

    check-cast p2, Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getOnRatingChangeListener$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->onRatingChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getRating$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/core/network/model/Rating;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->rating:Lru/rocketbank/core/network/model/Rating;

    return-object p0
.end method

.method public static final synthetic access$setOnRatingChangeListener$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->onRatingChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    return-void
.end method

.method public static final synthetic access$setRating$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;Lru/rocketbank/core/network/model/Rating;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->rating:Lru/rocketbank/core/network/model/Rating;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/network/model/Rating;Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;)V
    .locals 2

    const-string v0, "changeListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Rating;->getText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->ratingView:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Rating;->getRate()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->rating:Lru/rocketbank/core/network/model/Rating;

    .line 51
    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->onRatingChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    return-void
.end method

.method public final refresh(ILjava/lang/String;)V
    .locals 1

    const-string v0, "comment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->ratingView:Landroid/widget/RatingBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->rating:Lru/rocketbank/core/network/model/Rating;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/Rating;->setRate(F)V

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->rating:Lru/rocketbank/core/network/model/Rating;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/core/network/model/Rating;->setComment(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->refresh()V

    return-void

    :cond_2
    return-void
.end method
