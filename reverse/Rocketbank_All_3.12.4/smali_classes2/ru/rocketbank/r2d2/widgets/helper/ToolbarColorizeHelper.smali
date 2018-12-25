.class public Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper;
.super Ljava/lang/Object;
.source "ToolbarColorizeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static colorizeToolbar(ILandroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V
    .locals 9

    .line 51
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    move v2, v1

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 54
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 57
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    :cond_0
    instance-of v4, v3, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v4, :cond_3

    move v4, v1

    .line 63
    :goto_1
    move-object v5, v3

    check-cast v5, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 67
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 68
    instance-of v6, v5, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_2

    move v6, v1

    .line 69
    :goto_2
    move-object v7, v5

    check-cast v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    array-length v8, v8

    if-ge v6, v8, :cond_2

    .line 70
    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v6

    if-eqz v7, :cond_1

    .line 75
    new-instance v7, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$1;

    invoke-direct {v7, v5, v6, v0}, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$1;-><init>(Landroid/view/View;ILandroid/graphics/PorterDuffColorFilter;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 89
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 92
    invoke-static {p2, v0}, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper;->setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V
    .locals 2

    const p1, 0x7f110003

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    new-instance v1, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
