.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "GenericOperationViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/Utils$OperationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder$Companion;

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170


# instance fields
.field private final additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final buttonsView:Landroid/widget/LinearLayout;

.field private final commentView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final context:Landroid/content/Context;

.field private final dayTitleView:Landroid/widget/TextView;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final nameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationIconText:Lru/rocketbank/core/widgets/RocketTextView;

.field private final operationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->Companion:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->context:Landroid/content/Context;

    const p1, 0x7f090122

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const p1, 0x7f090294

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const p1, 0x7f09026c

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09004d

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090292

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.operation)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operationView:Landroid/view/View;

    const p1, 0x7f0900f3

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0900ab

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const p1, 0x7f09022a

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09003b

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090295

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operationIconText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operationView:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getSTATUS_IN$cp()I
    .locals 1

    .line 23
    sget v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->STATUS_IN:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_NONE$cp()I
    .locals 1

    .line 23
    sget v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->STATUS_NONE:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_OUT$cp()I
    .locals 1

    .line 23
    sget v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->STATUS_OUT:I

    return v0
.end method

.method private final showOperation()V
    .locals 3

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_0

    .line 119
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 60
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->itemView:Landroid/view/View;

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

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09003b

    if-eq p1, v0, :cond_4

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090292

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->showOperation()V

    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;->onAction(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    .line 131
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-eqz p1, :cond_7

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;->onAction(Lru/rocketbank/core/network/model/FeedItem;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final onRequestAccepted(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestDeclined(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTagClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdditionalAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 2

    .line 138
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->setWithContent(Z)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {}, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;->getInstance()Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;

    move-result-object v1

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/Utils$OperationListener;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/Utils;->replaceHashWithUrls(Ljava/lang/String;Lru/rocketbank/r2d2/Utils$OperationListener;)Landroid/text/SpannableString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMainActionView(Ljava/lang/String;)V
    .locals 2

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoAction()V
    .locals 2

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 73
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOnAdditionalAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onAdditionalAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onMainAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 112
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 113
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method public final setWithContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

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

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

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

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showWaiting()V
    .locals 2

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const v1, 0x7f1104d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final showYesterday(Ljava/util/Calendar;)V
    .locals 3

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->dayTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1104ec

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;->getString(I)Ljava/lang/String;

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
