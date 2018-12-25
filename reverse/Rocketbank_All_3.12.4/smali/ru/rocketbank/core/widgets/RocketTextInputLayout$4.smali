.class final Lru/rocketbank/core/widgets/RocketTextInputLayout$4;
.super Ljava/lang/Object;
.source "RocketTextInputLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketTextInputLayout;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$4;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$4;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$400(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void
.end method
