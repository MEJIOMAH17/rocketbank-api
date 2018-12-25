.class public final Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "OperationParentViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/Utils$OperationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationParentViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationParentViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder\n*L\n1#1,123:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder$Companion;

.field public static final STATUS_IN:I = 0x1b5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_OUT:I = 0x170


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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->Companion:Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09026c

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09004d

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.amount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090292

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.operation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operationView:Landroid/view/View;

    const v0, 0x7f0900f3

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.comment)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0900ab

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.buttons)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const v0, 0x7f09022a

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.mainAction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09003b

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.additionalAction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090294

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.operationIcon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const v0, 0x7f090122

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById<View>(R.id.dayTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operationView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setWithContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method private final showOperation()V
    .locals 4

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_0

    .line 91
    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->showOperation()V

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

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdditionalAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 2

    .line 96
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setWithContent(Z)V

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {}, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;->getInstance()Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;

    move-result-object v1

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

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

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoAction()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 47
    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOnAdditionalAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onAdditionalAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onMainAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 86
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method
