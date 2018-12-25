.class public final Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$exitReveal$1;
.super Lio/codetail/animation/SupportAnimator$SimpleAnimatorListener;
.source "NonSelectedHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->exitReveal(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$exitReveal$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Lio/codetail/animation/SupportAnimator$SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    .line 221
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$exitReveal$1;->$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
