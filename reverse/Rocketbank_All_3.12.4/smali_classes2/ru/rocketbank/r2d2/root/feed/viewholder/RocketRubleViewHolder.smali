.class public final Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "RocketRubleViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/Utils$OperationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketRubleViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketRubleViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder\n*L\n1#1,144:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder$Companion;

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170


# instance fields
.field private final additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final buttonsView:Landroid/widget/LinearLayout;

.field private final commentView:Lru/rocketbank/core/widgets/RocketTextView;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final nameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field private final operationIconText:Lru/rocketbank/core/widgets/RocketTextView;

.field private final operationView:Landroid/view/View;

.field private final rocketrublesView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->Companion:Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 19
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 20
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.operation)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operationView:Landroid/view/View;

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0900f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 22
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0902f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->rocketrublesView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 23
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0900ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    .line 24
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090295

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operationIconText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 27
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operationView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getSTATUS_IN$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->STATUS_IN:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_NONE$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->STATUS_NONE:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_OUT$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->STATUS_OUT:I

    return v0
.end method

.method private final showOperation()V
    .locals 4

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_0

    .line 102
    sget-object v1, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    .line 40
    invoke-super {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->clean()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 43
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09003b

    if-eq p1, v0, :cond_4

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090292

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->showOperation()V

    return-void

    .line 110
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-eqz p1, :cond_7

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;->onAction(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    .line 114
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-eqz p1, :cond_7

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

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
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->itemView:Landroid/view/View;

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

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAmount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketrubles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->rocketrublesView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 2

    .line 121
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setWithContent(Z)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {}, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;->getInstance()Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;

    move-result-object v1

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

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

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->nameView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoAction()V
    .locals 2

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 56
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->buttonsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->mainActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->additionalActionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOnAdditionalAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onAdditionalAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onAdditionalAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V
    .locals 1

    const-string v0, "onMainAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->onMainAction:Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 97
    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method public final setWithContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->commentView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method
