.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V
    .locals 1

    .line 713
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    .line 714
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 716
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090361

    .line 718
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 719
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$1200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 720
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 725
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
