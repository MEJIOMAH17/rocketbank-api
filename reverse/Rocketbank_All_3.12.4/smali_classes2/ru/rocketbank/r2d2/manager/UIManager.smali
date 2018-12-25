.class public final Lru/rocketbank/r2d2/manager/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# instance fields
.field private bottom:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 20
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 22
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    :cond_1
    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    iget v1, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-lt v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "navigation_bar_width"

    .line 26
    invoke-direct {p0, p1, v1}, Lru/rocketbank/r2d2/manager/UIManager;->getDimensionPixelSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/manager/UIManager;->right:I

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "navigation_bar_height"

    .line 24
    invoke-direct {p0, p1, v1}, Lru/rocketbank/r2d2/manager/UIManager;->getDimensionPixelSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/manager/UIManager;->bottom:I

    .line 27
    :cond_4
    :goto_1
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-string v0, "status_bar_height"

    .line 28
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/manager/UIManager;->getDimensionPixelSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/manager/UIManager;->top:I

    :cond_5
    return-void
.end method

.method private getDimensionPixelSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "dimen"

    const-string v1, "android"

    .line 45
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    .line 33
    iget v0, p0, Lru/rocketbank/r2d2/manager/UIManager;->bottom:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 37
    iget v0, p0, Lru/rocketbank/r2d2/manager/UIManager;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 41
    iget v0, p0, Lru/rocketbank/r2d2/manager/UIManager;->top:I

    return v0
.end method
