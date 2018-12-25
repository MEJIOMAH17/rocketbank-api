.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;
.super Ljava/lang/Object;
.source "CardDetailFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    .line 449
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0902dc

    if-eq p1, v0, :cond_1

    const v0, 0x7f090367

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$showSupport(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$rename(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
