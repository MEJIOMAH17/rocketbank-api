.class public Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "UserFeedRefillFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/IHostFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;
    }
.end annotation


# static fields
.field private static final KEY_REVEAL:Ljava/lang/String; = "reveal"

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field private token:Ljava/lang/String;

.field toolbarTitleView:Lru/rocketbank/core/widgets/RocketTextView;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->updateToolar(I)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;ZFF)Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;
    .locals 3

    .line 162
    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;-><init>()V

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_TOKEN"

    .line 165
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "reveal"

    .line 166
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "x"

    float-to-int p1, p2

    .line 167
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "y"

    float-to-int p1, p3

    .line 168
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setClickNextListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setEnabledButtonNext(Z)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method private updateToolar(I)V
    .locals 1

    const v0, 0x7f09008a

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->setEnabledButtonNext(Z)V

    return-void

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canBack()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->canBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canShowMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveBack()V
    .locals 1

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->moveBack()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0103

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903e0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->toolbarTitleView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0902a2

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const p2, 0x7f090372

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 81
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->toolbarTitleView:Lru/rocketbank/core/widgets/RocketTextView;

    const v1, 0x7f110113

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->toolbarTitleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketTextView;->requestLayout()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903d8

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 51
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 53
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->toolbarTitleView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    new-instance p1, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->adapter:Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
