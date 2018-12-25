.class public final Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;
.super Ljava/lang/Object;
.source "TransferActivity.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 176
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

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

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$getVibrator$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 187
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrencyAdapter()Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->getCurrencyAtPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$setSelectedCurrency$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$refreshTextInfo(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrencyAdapter()Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->getCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$refreshDrawableState(Lru/rocketbank/r2d2/activities/safe/TransferActivity;II)V

    return-void
.end method
