.class public final Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OperationDetailViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/Utils$OperationListener;


# instance fields
.field private final additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final buttonsView:Landroid/widget/LinearLayout;

.field private final commentView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final dayTitleView:Landroid/widget/TextView;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final nameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationListActivity:Landroid/app/Activity;

.field private final operationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "operationListActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationListActivity:Landroid/app/Activity;

    const p1, 0x7f090294

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const p1, 0x7f09026c

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09004d

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090292

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.operation)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationView:Landroid/view/View;

    const p1, 0x7f0900f3

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0900ab

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const p1, 0x7f09022a

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09003b

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090122

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationView:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final showOperation()V
    .locals 3

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    sget-object v1, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->Companion:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;->getOPEATION()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v2, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationListActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationListActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final getOperationIcon()Lru/rocketbank/r2d2/widgets/operations/OperationIconView;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    return-object v0
.end method

.method public final getOperationListActivity()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationListActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final hideDayStart()V
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090292

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->showOperation()V

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

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationListActivity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 2

    .line 114
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setWithContent(Z)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {}, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;->getInstance()Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;

    move-result-object v1

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/Utils$OperationListener;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/Utils;->replaceHashWithUrls(Ljava/lang/String;Lru/rocketbank/r2d2/Utils$OperationListener;)Landroid/text/SpannableString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoAction()V
    .locals 2

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 94
    iput-object p2, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 96
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method

.method public final setWithContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final showFirst()V
    .locals 2

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->dayTitleView:Landroid/widget/TextView;

    const v1, 0x7f110345

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
