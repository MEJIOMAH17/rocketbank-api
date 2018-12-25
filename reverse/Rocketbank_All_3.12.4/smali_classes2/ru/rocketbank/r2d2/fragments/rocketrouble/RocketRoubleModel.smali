.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;
.super Ljava/lang/Object;
.source "RocketRoubleModel.kt"


# instance fields
.field private final appBarLayout:Landroid/widget/FrameLayout;

.field private headerHeight:I

.field private isFullMoneyMode:Z

.field private isFullMoneyModeList:Z


# direct methods
.method public constructor <init>(ZLandroid/widget/FrameLayout;)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode:Z

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->appBarLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final getAppBarLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->appBarLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->headerHeight:I

    return v0
.end method

.method public final isFullMoneyMode()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode:Z

    return v0
.end method

.method public final isFullMoneyModeList()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyModeList:Z

    return v0
.end method

.method public final setFullMoneyMode(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode:Z

    return-void
.end method

.method public final setFullMoneyModeList(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyModeList:Z

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 10
    iput p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->headerHeight:I

    return-void
.end method
