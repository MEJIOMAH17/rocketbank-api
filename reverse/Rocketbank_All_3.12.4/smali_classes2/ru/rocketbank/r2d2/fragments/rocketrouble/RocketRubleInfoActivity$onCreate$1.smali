.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;
.super Lrx/Subscriber;
.source "RocketRubleInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/RocketRoublesInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lru/rocketbank/core/model/dto/RocketRoublesInfo;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->onNext(Lru/rocketbank/core/model/dto/RocketRoublesInfo;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/RocketRoublesInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getCashbackType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onetwotrip"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v3, Lru/rocketbank/r2d2/R$id;->onetwotrip:I

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v3, "onetwotrip"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v2, Lru/rocketbank/r2d2/R$id;->rocketrubles:I

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v2, "rocketrubles"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->onetwotrip:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-static {v0}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "DataBindingUtil.bind<Inf\u2026ripBinding>(onetwotrip)!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->setData(Lru/rocketbank/core/model/dto/RocketRoublesInfo;)V

    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v3, Lru/rocketbank/r2d2/R$id;->onetwotrip:I

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v3, "onetwotrip"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->rocketrubles:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v1, "rocketrubles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 72
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    .line 74
    :cond_4
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v4, Lru/rocketbank/r2d2/R$id;->descriptionXXX:I

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v4, "descriptionXXX"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->descriptionXXX:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "descriptionXXX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getCashbackType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$refreshRocketScreen(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Ljava/lang/String;)V

    return-void
.end method
