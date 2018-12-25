.class final Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;
.super Ljava/lang/Object;
.source "TransfersFromCardFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransfersFromCardFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransfersFromCardFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1\n*L\n1#1,295:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $cardModel:Lru/rocketbank/core/model/CardModel;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Landroid/view/View;Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "item"

    .line 167
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

    .line 169
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "view.parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "view.parent.parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 171
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {v2}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {v4}, Lru/rocketbank/core/model/CardModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getInstance(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    move-result-object v2

    .line 172
    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;

    invoke-direct {v3, v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;-><init>(ILru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;)V

    check-cast v3, Lrx/functions/Action1;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onRename(Lrx/functions/Action1;)V

    const/4 v0, 0x0

    .line 177
    invoke-virtual {v2, p1, v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 184
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$hideCard(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/CardModel;)V

    return v1
.end method
