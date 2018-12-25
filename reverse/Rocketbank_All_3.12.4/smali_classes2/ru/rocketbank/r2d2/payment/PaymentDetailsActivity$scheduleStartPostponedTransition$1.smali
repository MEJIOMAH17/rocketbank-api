.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;
.super Ljava/lang/Object;
.source "PaymentDetailsActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->scheduleStartPostponedTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sharedElement:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;->$sharedElement:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;->$sharedElement:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->startPostponedEnterTransition()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
