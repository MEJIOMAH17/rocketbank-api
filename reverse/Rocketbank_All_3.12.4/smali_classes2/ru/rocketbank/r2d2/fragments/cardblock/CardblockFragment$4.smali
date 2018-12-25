.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4;
.super Ljava/lang/Object;
.source "CardblockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->moveToUnblockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 280
    invoke-static {}, Lru/rocketbank/r2d2/RocketHandler;->getInstance()Lru/rocketbank/r2d2/RocketHandler;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4$1;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$4;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/RocketHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
