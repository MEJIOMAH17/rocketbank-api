.class public final Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;
.super Ljava/lang/Object;
.source "TransferActivity.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setupViewPagers(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getViewData$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 253
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getVibrator$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 255
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getSourceAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/root/transfer/ProductPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$setFromToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getFromToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 257
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getFromToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshTargetDestination(Ljava/lang/String;)V

    .line 260
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateScreen()V

    return-void
.end method
