.class final Landroid/support/transition/FragmentTransitionSupport$3;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 218
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel$30e4fb03()V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionPause$30e4fb03()V
    .locals 0

    return-void
.end method

.method public final onTransitionResume$30e4fb03()V
    .locals 0

    return-void
.end method

.method public final onTransitionStart$30e4fb03()V
    .locals 4

    .line 221
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 227
    :cond_1
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
