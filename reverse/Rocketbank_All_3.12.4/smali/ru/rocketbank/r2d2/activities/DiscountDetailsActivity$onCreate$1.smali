.class final Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;
.super Ljava/lang/Object;
.source "DiscountDetailsActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getImageView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getToolbar$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$setHeight$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;F)V

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getObservableScrollView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->getCurrentScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->onScrollChanged(IZZ)V

    return-void
.end method
