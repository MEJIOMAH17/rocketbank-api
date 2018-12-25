.class final Lru/rocketbank/core/widgets/RocketTextInputLayout$5;
.super Ljava/lang/Object;
.source "RocketTextInputLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 730
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$5;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 738
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$5;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$502(Lru/rocketbank/core/widgets/RocketTextInputLayout;Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 733
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$5;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$502(Lru/rocketbank/core/widgets/RocketTextInputLayout;Z)Z

    return-void
.end method
