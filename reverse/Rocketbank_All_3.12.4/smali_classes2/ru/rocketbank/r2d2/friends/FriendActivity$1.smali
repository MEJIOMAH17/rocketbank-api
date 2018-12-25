.class Lru/rocketbank/r2d2/friends/FriendActivity$1;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$000(Lru/rocketbank/r2d2/friends/FriendActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$100(Lru/rocketbank/r2d2/friends/FriendActivity;)Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$000(Lru/rocketbank/r2d2/friends/FriendActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->clearTransitionNames()V

    .line 108
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$100(Lru/rocketbank/r2d2/friends/FriendActivity;)Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->setTransitionNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onTextChanged()V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$1;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$002(Lru/rocketbank/r2d2/friends/FriendActivity;I)I

    return-void
.end method
