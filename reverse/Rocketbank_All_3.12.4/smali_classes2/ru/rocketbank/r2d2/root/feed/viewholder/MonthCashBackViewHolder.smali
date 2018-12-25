.class public final Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "MonthCashBackViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonthCashBackViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonthCashBackViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder\n*L\n1#1,256:1\n*E\n"
.end annotation


# instance fields
.field private final confirmView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final containerView:Landroid/widget/LinearLayout;

.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

.field private final headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final needToSelectCount:I

.field private final resources:Landroid/content/res/Resources;

.field private selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedPresenter;Landroid/view/View;)V
    .locals 1

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    const p1, 0x7f090253

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.merchantContainer)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->containerView:Landroid/widget/LinearLayout;

    const p1, 0x7f0901b0

    .line 30
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.headerText)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090319

    .line 31
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.selectionStatus)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0900fe

    .line 32
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.confirm)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 34
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->needToSelectCount:I

    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "itemView.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->resources:Landroid/content/res/Resources;

    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static final synthetic access$onClickMerchant(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->onClickMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V

    return-void
.end method

.method private final confirm()V
    .locals 3

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->sendMonthCashBack(Ljava/util/Set;Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method private final enterReveal(Landroid/view/View;)V
    .locals 6

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 155
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    .line 158
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    .line 159
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 160
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 161
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final exitReveal(Landroid/view/View;)V
    .locals 4

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 177
    invoke-static {p1, v0, v1, v2, v3}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    .line 180
    new-instance v1, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$exitReveal$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$exitReveal$1;-><init>(Landroid/view/View;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 187
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final getItemColor(J)I
    .locals 1

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f06009f

    goto :goto_0

    :cond_0
    const p1, 0x7f060254

    :goto_0
    return p1
.end method

.method private final isLimitReached()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->needToSelectCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final onClickMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 8

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 92
    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 93
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->updateTexts()V

    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->isLimitReached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 96
    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 98
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->updateTexts()V

    :cond_1
    return-void
.end method

.method private final setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V
    .locals 2

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080206

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getItemColor(J)I

    move-result p1

    .line 116
    iget-object p4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p5, :cond_1

    .line 120
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->enterReveal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 122
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080205

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    invoke-virtual {p4}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getItemColor(J)I

    move-result p1

    .line 138
    iget-object p4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p5, :cond_1

    .line 142
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->exitReveal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 144
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateTexts()V
    .locals 6

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/16 v2, 0x8

    const v3, 0x7f060095

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->titleText:Ljava/lang/String;

    if-eqz v4, :cond_0

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->resources:Landroid/content/res/Resources;

    const v5, 0x7f1102f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 200
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v3, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 203
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->isLimitReached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060207

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 208
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->headerTextView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f1102f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 213
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirmView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 215
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->needToSelectCount:I

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f110257

    .line 220
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_0
    const v1, 0x7f110256

    .line 219
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    const v1, 0x7f110255

    .line 218
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f110254

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectionStatusView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addMerchant(Lru/rocketbank/core/model/dto/operations/Merchant;I)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "merchant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->containerView:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0c0121

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090254

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f090258

    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902ac

    .line 55
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v4, Landroid/widget/TextView;

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " %"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070173

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 62
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 63
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    .line 64
    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->itemView:Landroid/view/View;

    const-string v6, "itemView"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    .line 66
    invoke-virtual {v3, p2, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    new-array v3, v5, [Lcom/bumptech/glide/load/Transformation;

    .line 69
    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    aput-object v4, v3, v2

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 70
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_4
    const p2, 0x7f090289

    .line 73
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090252

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    new-instance v2, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;

    move-object v4, v2

    move-object v5, p0

    move-object v6, v1

    move-object v7, v0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;-><init>(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "clickView"

    .line 78
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "merchantView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "merchantRevealIconView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setSelectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    goto :goto_1

    :cond_5
    const-string v2, "clickView"

    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "merchantView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "merchantRevealIconView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setUnselectedMerchant(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;Z)V

    .line 83
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->updateTexts()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900fe

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->confirm()V

    :goto_0
    return-void
.end method

.method public final setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method public final setSelectedIds(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->selectedIds:Ljava/util/Set;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->titleText:Ljava/lang/String;

    return-void
.end method
