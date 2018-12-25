.class public abstract Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemChosenMonthCashbackBinding.java"


# instance fields
.field public final cardBody:Landroid/support/v7/widget/CardView;

.field protected mFeed:Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;

.field public final merchantImageViewOne:Landroid/widget/ImageView;

.field public final merchantImageViewThree:Landroid/widget/ImageView;

.field public final merchantImageViewTwo:Landroid/widget/ImageView;

.field public final merchantNameOne:Landroid/widget/TextView;

.field public final merchantNameThree:Landroid/widget/TextView;

.field public final merchantNameTwo:Landroid/widget/TextView;

.field public final root:Landroid/widget/LinearLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/v7/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 40
    iput-object p4, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->cardBody:Landroid/support/v7/widget/CardView;

    .line 41
    iput-object p5, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewOne:Landroid/widget/ImageView;

    .line 42
    iput-object p6, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewThree:Landroid/widget/ImageView;

    .line 43
    iput-object p7, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewTwo:Landroid/widget/ImageView;

    .line 44
    iput-object p8, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameOne:Landroid/widget/TextView;

    .line 45
    iput-object p9, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameThree:Landroid/widget/TextView;

    .line 46
    iput-object p10, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameTwo:Landroid/widget/TextView;

    .line 47
    iput-object p11, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->root:Landroid/widget/LinearLayout;

    .line 48
    iput-object p12, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    const v0, 0x7f0c00af

    .line 78
    invoke-static {p1, p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    .line 62
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 3

    const v0, 0x7f0c00af

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    .line 58
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    const v0, 0x7f0c00af

    .line 70
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    return-object p0
.end method


# virtual methods
.method public getFeed()Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->mFeed:Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;

    return-object v0
.end method

.method public abstract setFeed(Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;)V
.end method
