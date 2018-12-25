.class public final Lru/rocketbank/r2d2/helpers/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# static fields
.field private static bottom:I

.field private static right:I

.field private static top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZLandroid/view/View;ZZZ)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/helpers/UIHelper;->set(ZLandroid/view/View;ZZZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;ILandroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->recursiveColorize(Landroid/view/ViewGroup;ILandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2010
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 368
    iput v1, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    iget p2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    add-int/2addr p2, v0

    iput p2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 374
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1, v1, p0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    iget p0, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    add-int/2addr p0, v0

    iput p0, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public static colorizeToolbar(Landroid/support/v7/widget/Toolbar;ILandroid/app/Activity;)V
    .locals 10

    .line 169
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    move v2, v1

    .line 172
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 173
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 176
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 178
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    :cond_0
    instance-of v4, v3, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v4, :cond_4

    move v4, v1

    .line 182
    :goto_1
    move-object v5, v3

    check-cast v5, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 186
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 188
    instance-of v6, v5, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_2

    .line 189
    move-object v6, v5

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v7, v7

    move v8, v1

    :goto_2
    if-ge v8, v7, :cond_2

    .line 191
    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    .line 197
    new-instance v9, Lru/rocketbank/r2d2/helpers/UIHelper$5;

    invoke-direct {v9, v5, v8, v0}, Lru/rocketbank/r2d2/helpers/UIHelper$5;-><init>(Landroid/view/View;ILandroid/graphics/PorterDuffColorFilter;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 207
    :cond_2
    instance-of v6, v5, Landroid/support/v7/widget/SearchView;

    if-eqz v6, :cond_3

    .line 208
    new-instance v6, Lru/rocketbank/r2d2/helpers/UIHelper$6;

    invoke-direct {v6, v5, p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper$6;-><init>(Landroid/view/View;ILandroid/graphics/PorterDuffColorFilter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 221
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 224
    invoke-static {p2, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method public static getBottom()I
    .locals 1

    .line 57
    sget v0, Lru/rocketbank/r2d2/helpers/UIHelper;->bottom:I

    return v0
.end method

.method public static getErrorMessage(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 351
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_0

    .line 352
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 353
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f11018d

    .line 361
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 430
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getRight()I
    .locals 1

    .line 61
    sget v0, Lru/rocketbank/r2d2/helpers/UIHelper;->right:I

    return v0
.end method

.method public static getTop()I
    .locals 1

    .line 65
    sget v0, Lru/rocketbank/r2d2/helpers/UIHelper;->top:I

    return v0
.end method

.method public static goToHome(Landroid/app/Activity;)V
    .locals 2

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static makeSnack(Landroid/view/View;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    const/4 v0, -0x1

    .line 314
    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;II)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnack(Landroid/view/View;II)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060254

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 319
    invoke-static {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;II)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnack(Landroid/view/View;Ljava/lang/String;)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    const/4 v0, -0x1

    .line 305
    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;Ljava/lang/String;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnack(Landroid/view/View;Ljava/lang/String;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060254

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 310
    invoke-static {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-static {p0, p1, v0, v1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->getErrorMessage(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;Ljava/lang/String;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 345
    invoke-virtual {p0, p2, p3}, Lru/rocketbank/core/widgets/RocketSnackbar;->setAction(ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;

    :cond_0
    return-object p0
.end method

.method private static recursiveColorize(Landroid/view/ViewGroup;ILandroid/graphics/PorterDuffColorFilter;)V
    .locals 3

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 230
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 231
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 232
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->recursiveColorize(Landroid/view/ViewGroup;ILandroid/graphics/PorterDuffColorFilter;)V

    goto :goto_1

    .line 233
    :cond_0
    instance-of v2, v1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 234
    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 235
    :cond_1
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 236
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 237
    :cond_2
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 238
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static set(ZLandroid/view/View;ZZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 88
    sget p2, Lru/rocketbank/r2d2/helpers/UIHelper;->bottom:I

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 91
    sget p3, Lru/rocketbank/r2d2/helpers/UIHelper;->right:I

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    if-eqz p4, :cond_2

    .line 94
    sget p4, Lru/rocketbank/r2d2/helpers/UIHelper;->top:I

    goto :goto_2

    :cond_2
    move p4, v0

    :goto_2
    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v1, p4

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    :cond_3
    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 50
    new-instance v0, Lru/rocketbank/r2d2/manager/UIManager;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/manager/UIManager;-><init>(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/UIManager;->getBottom()I

    move-result p0

    sput p0, Lru/rocketbank/r2d2/helpers/UIHelper;->bottom:I

    .line 52
    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/UIManager;->getRight()I

    move-result p0

    sput p0, Lru/rocketbank/r2d2/helpers/UIHelper;->right:I

    .line 53
    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/UIManager;->getTop()I

    move-result p0

    sput p0, Lru/rocketbank/r2d2/helpers/UIHelper;->top:I

    return-void
.end method

.method private static setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f110003

    .line 262
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 265
    new-instance v2, Lru/rocketbank/r2d2/helpers/UIHelper$7;

    invoke-direct {v2, p0, v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper$7;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/PorterDuffColorFilter;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static setPadding(ZLandroid/view/View;ZZZ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    new-instance p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;

    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/helpers/UIHelper$1;-><init>(Landroid/view/View;ZZZ)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/helpers/UIHelper;->set(ZLandroid/view/View;ZZZ)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 387
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f11032e

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 393
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f060208

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 382
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 397
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/helpers/UIHelper$9;

    invoke-direct {v1, p3}, Lru/rocketbank/r2d2/helpers/UIHelper$9;-><init>(Ljava/lang/Runnable;)V

    .line 399
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/helpers/UIHelper$8;

    invoke-direct {p2, p4}, Lru/rocketbank/r2d2/helpers/UIHelper$8;-><init>(Ljava/lang/Runnable;)V

    const/high16 p3, 0x1040000

    .line 405
    invoke-virtual {p1, p3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 417
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const p3, 0x7f060208

    invoke-static {p0, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 418
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f060096

    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static showPrivacyDialog(Landroid/content/Context;Ljava/lang/String;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Landroid/support/v7/app/AlertDialog;
    .locals 7

    .line 102
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 107
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 108
    invoke-static {p0, v5}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    .line 109
    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 113
    new-instance v1, Lru/rocketbank/r2d2/helpers/UIHelper$2;

    invoke-direct {v1, p4}, Lru/rocketbank/r2d2/helpers/UIHelper$2;-><init>(Lrx/functions/Action0;)V

    const p4, 0x7f110163

    invoke-virtual {v0, p4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 122
    new-instance p4, Lru/rocketbank/r2d2/helpers/UIHelper$3;

    invoke-direct {p4, p3}, Lru/rocketbank/r2d2/helpers/UIHelper$3;-><init>(Lrx/functions/Action0;)V

    const p3, 0x7f110053

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 132
    new-instance p3, Lru/rocketbank/r2d2/helpers/UIHelper$4;

    invoke-direct {p3, p2}, Lru/rocketbank/r2d2/helpers/UIHelper$4;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {v2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 150
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const p3, 0x7f060208

    .line 151
    invoke-static {p0, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 152
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const p3, 0x7f060096

    .line 153
    invoke-static {p0, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-object p1
.end method

.method public static showSnack(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method public static showSnack(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;Ljava/lang/String;)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method public static showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    const/4 v0, -0x2

    .line 323
    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 0

    .line 327
    invoke-static {p0, p1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-object p0
.end method

.method public static showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    const/4 v0, -0x2

    .line 333
    invoke-static {p0, p1, p2, p3, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-object p0
.end method

.method public static supportsViewElevation()Z
    .locals 2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
