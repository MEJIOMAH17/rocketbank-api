.class public final Lru/rocketbank/core/widgets/ItemShadowDecorator;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemShadowDecorator.java"


# instance fields
.field private final mCastShadowForTransparentBackgroundItem:Z

.field private final mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mShadowPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/ItemShadowDecorator;-><init>(Landroid/graphics/drawable/NinePatchDrawable;B)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;B)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 54
    iget-object p1, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object p2, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mCastShadowForTransparentBackgroundItem:Z

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    const/4 p2, 0x0

    .line 111
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 60
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_5

    .line 67
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1087
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v3, v0

    goto :goto_2

    .line 1090
    :cond_1
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1094
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 73
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 74
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v8, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    .line 81
    iget-object v8, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    add-int/2addr v5, v3

    add-int/2addr v7, v4

    add-int/2addr v6, v3

    add-int/2addr v2, v4

    invoke-virtual {v8, v5, v7, v6, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 82
    iget-object v2, p0, Lru/rocketbank/core/widgets/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
