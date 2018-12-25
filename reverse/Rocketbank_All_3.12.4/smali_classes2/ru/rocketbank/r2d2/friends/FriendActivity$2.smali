.class Lru/rocketbank/r2d2/friends/FriendActivity$2;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 134
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$2;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$2;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$2;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$2;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$100(Lru/rocketbank/r2d2/friends/FriendActivity;)Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onNextButtonClick()V

    return-void
.end method
