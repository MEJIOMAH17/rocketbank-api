.class public final Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "CommentViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/vh/TagActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/CommentViewHolder\n*L\n1#1,122:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

.field private final operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

.field private final tagState:Lru/rocketbank/r2d2/root/operation/vh/TagState;

.field private final textWatcher:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;

.field private final viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;


# direct methods
.method public constructor <init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationPresenter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    .line 21
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/TagState;

    invoke-direct {p2}, Lru/rocketbank/r2d2/root/operation/vh/TagState;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->tagState:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    .line 22
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;-><init>(Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->textWatcher:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;

    .line 24
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-result-object p2

    const-string p3, "LayoutOperationCategoryBinding.bind(itemView)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    .line 25
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-object p3, p0

    check-cast p3, Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/TagActions;)V

    .line 26
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->tagState:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setData(Lru/rocketbank/r2d2/root/operation/vh/TagState;)V

    .line 27
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setState(Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;)V

    .line 29
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    .line 30
    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object p3, p3, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->comment:Lru/rocketbank/r2d2/friends/HashTagEditText;

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;-><init>(Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;-><init>(Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p3, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 41
    new-instance p2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f060200

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 44
    invoke-virtual {p2, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->setTint(I)V

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    const-string p3, "binding.indeterminateProgress"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getOperationPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-object v0
.end method

.method public final getViewData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    return-object v0
.end method

.method public final handleTextChange()V
    .locals 4

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->card:Landroid/support/v7/widget/CardView;

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getLastComment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getCurrentComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    const-string v1, "card"

    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    const-string v1, "card"

    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    :cond_3
    return-void
.end method

.method public final onBind()V
    .locals 5

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_3

    .line 52
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->icon:Lru/rocketbank/core/widgets/RocketIconView;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/OperationCategory;->getId()J

    move-result-wide v2

    .line 1033
    sget-object v4, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v4, v2, v3}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v2

    .line 1035
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketIconView;->setTextColor(I)V

    .line 1036
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketIconView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->tagState:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/TagState;->getCategoryName()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/OperationCategory;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->restoreTextInput(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_3
    return-void
.end method

.method public final onCancel()V
    .locals 2

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setLastComment(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    check-cast v1, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->restoreTextInput(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->hideKeyboard()V

    return-void
.end method

.method public final onSave()V
    .locals 2

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->comment:Lru/rocketbank/r2d2/friends/HashTagEditText;

    const-string v1, "comment"

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->saveOperationComment(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->hideKeyboard()V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->handleTextChange()V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getUpdateInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final restoreTextInput(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->comment:Lru/rocketbank/r2d2/friends/HashTagEditText;

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->textWatcher:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getLastComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->viewData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getCurrentComment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->textWatcher:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->handleTextChange()V

    return-void
.end method
