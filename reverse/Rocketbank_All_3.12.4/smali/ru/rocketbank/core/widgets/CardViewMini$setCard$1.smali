.class final Lru/rocketbank/core/widgets/CardViewMini$setCard$1;
.super Ljava/lang/Object;
.source "CardViewMini.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CardViewMini;->setCard(Lru/rocketbank/core/model/CardModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cardModel:Lru/rocketbank/core/model/CardModel;

.field final synthetic this$0:Lru/rocketbank/core/widgets/CardViewMini;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CardViewMini;Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;->this$0:Lru/rocketbank/core/widgets/CardViewMini;

    iput-object p2, p0, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;->this$0:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CardViewMini;->access$getCardActionsListener$p(Lru/rocketbank/core/widgets/CardViewMini;)Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;->$cardModel:Lru/rocketbank/core/model/CardModel;

    const-string v2, "v"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;->onActionRequested(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V

    return-void

    :cond_0
    return-void
.end method
