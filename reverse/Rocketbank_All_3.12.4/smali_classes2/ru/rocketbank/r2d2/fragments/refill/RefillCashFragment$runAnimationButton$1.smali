.class final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimationButton$1;
.super Ljava/lang/Object;
.source "RefillCashFragment.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->runAnimationButton(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimationButton$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-nez p1, :cond_0

    .line 317
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 318
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimationButton$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getMapData$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Lru/rocketbank/r2d2/data/binding/MapData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getDetailsHeight()Landroid/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method
