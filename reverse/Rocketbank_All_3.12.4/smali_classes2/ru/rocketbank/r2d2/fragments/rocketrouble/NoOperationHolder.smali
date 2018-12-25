.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "NoOperationHolder.kt"


# instance fields
.field private leftView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090214

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.left)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public final getLeftView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setLeftText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setLeftView(Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->leftView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method
