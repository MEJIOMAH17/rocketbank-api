.class public Lru/rocketbank/r2d2/root/feed/FeedModel;
.super Ljava/lang/Object;
.source "FeedModel.kt"


# instance fields
.field private appBarHeight:I

.field private headerHeight:I

.field private overlayBackground:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->overlayBackground:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getAppBarHeight()I
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->appBarHeight:I

    return v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->headerHeight:I

    return v0
.end method

.method public final getOverlayBackground()Landroid/databinding/ObservableInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->overlayBackground:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final setAppBarHeight(I)V
    .locals 0

    .line 7
    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->appBarHeight:I

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->headerHeight:I

    return-void
.end method

.method public final setOverlayBackground(Landroid/databinding/ObservableInt;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedModel;->overlayBackground:Landroid/databinding/ObservableInt;

    return-void
.end method
