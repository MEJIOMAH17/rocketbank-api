.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "RocketRoubleOperationViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/Utils$OperationListener;


# instance fields
.field private final additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final buttonsView:Landroid/widget/LinearLayout;

.field private final commentView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final nameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09026c

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09004d

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.amount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090292

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.operation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operationView:Landroid/view/View;

    const v0, 0x7f0900f3

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.comment)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0900ab

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.buttons)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const v0, 0x7f09022a

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.mainAction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09003b

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.additionalAction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090294

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.operationIcon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operationView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setWithContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090292

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_2

    .line 76
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_2
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
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 2

    .line 83
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setWithContent(Z)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {}, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;->getInstance()Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;

    move-result-object v1

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

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

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoAction()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 47
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 64
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    return-void
.end method
