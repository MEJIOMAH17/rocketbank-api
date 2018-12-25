.class final Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "TransfersFromCardFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;


# direct methods
.method constructor <init>(ILru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;)V
    .locals 0

    iput p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->$position:I

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public final call(Ljava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/CardModel;->setTitle(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$getListAdapter$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->$position:I

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->notifyItemChanged(I)V

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V

    return-void
.end method
