.class public final Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;
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

    .line 268
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

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

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getViewData$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getVibrator$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 280
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getDestinationAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/root/transfer/ProductPager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$setDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getAuthorization$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 284
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 285
    instance-of v0, p1, Lru/rocketbank/core/model/DepositModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    check-cast p1, Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshSource(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshSource(Ljava/lang/String;)V

    .line 291
    :cond_3
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateScreen()V

    return-void
.end method
