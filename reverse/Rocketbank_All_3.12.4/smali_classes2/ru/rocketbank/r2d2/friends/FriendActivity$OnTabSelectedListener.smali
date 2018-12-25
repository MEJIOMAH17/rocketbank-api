.class Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendActivity;


# direct methods
.method private constructor <init>(Lru/rocketbank/r2d2/friends/FriendActivity;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/r2d2/friends/FriendActivity;Lru/rocketbank/r2d2/friends/FriendActivity$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;-><init>(Lru/rocketbank/r2d2/friends/FriendActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->access$100(Lru/rocketbank/r2d2/friends/FriendActivity;)Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getNextButtonText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
