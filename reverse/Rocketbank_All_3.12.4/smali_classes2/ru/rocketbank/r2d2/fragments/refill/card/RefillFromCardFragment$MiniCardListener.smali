.class public final Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;
.super Ljava/lang/Object;
.source "RefillFromCardFragment.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MiniCardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionRequested(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;->this$0:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    invoke-static {v0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->access$createPopUpMenu(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V

    return-void
.end method
