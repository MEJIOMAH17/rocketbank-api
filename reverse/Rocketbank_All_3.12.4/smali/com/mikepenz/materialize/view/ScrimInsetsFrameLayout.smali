.class public Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Lcom/mikepenz/materialize/view/IScrimInsetsLayout;


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mSystemUIVisible:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintNavigationBar:Z

.field private mTintStatusBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 45
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 45
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 45
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 64
    sget-object v0, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    sget p2, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsView_siv_insetForeground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 99
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 100
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 104
    :cond_0
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :cond_1
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 114
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 78
    iget-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 79
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v0
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 134
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public final setInsetForeground(I)V
    .locals 1

    .line 164
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setSystemUIVisible(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    return-void
.end method

.method public final setTintNavigationBar$1385ff()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    return-void
.end method

.method public final setTintStatusBar(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    return-void
.end method
