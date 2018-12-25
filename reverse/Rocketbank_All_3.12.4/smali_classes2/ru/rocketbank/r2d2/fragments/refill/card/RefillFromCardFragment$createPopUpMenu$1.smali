.class final Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;
.super Ljava/lang/Object;
.source "RefillFromCardFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cardModel:Lru/rocketbank/core/model/CardModel;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Landroid/view/View;Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    .line 177
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090201

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f090203

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->access$getRecyclerView$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "view.parent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "view.parent.parent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {v3}, Lru/rocketbank/core/model/CardModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getInstance(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    move-result-object v0

    .line 182
    new-instance v2, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1$1;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;I)V

    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onRename(Lrx/functions/Action1;)V

    .line 187
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v1

    .line 192
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->access$hideCard(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/CardModel;)V

    return v1
.end method
