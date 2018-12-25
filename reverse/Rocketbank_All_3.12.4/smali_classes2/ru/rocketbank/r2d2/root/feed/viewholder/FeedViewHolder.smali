.class public Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeedViewHolder.kt"


# instance fields
.field private final dayTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090122

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "itemView.context.resources.getString(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final hideDayStart()V
    .locals 2

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final showDayStart(Ljava/util/Calendar;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    sget-object v1, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->getDayDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showToday()V
    .locals 2

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showWaiting()V
    .locals 2

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const v1, 0x7f1104d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final showYesterday(Ljava/util/Calendar;)V
    .locals 3

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->dayTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1104ec

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/feed/FeedDateFormat;->getYesterdayDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
