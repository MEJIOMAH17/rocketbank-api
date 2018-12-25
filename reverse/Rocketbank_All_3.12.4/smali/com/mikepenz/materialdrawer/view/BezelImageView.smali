.class public Lcom/mikepenz/materialdrawer/view/BezelImageView;
.super Landroid/widget/ImageView;
.source "BezelImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/view/BezelImageView$CustomOutline;
    }
.end annotation


# instance fields
.field private isPressed:Z

.field private isSelected:Z

.field private mBlackPaint:Landroid/graphics/Paint;

.field private mBounds:Landroid/graphics/Rect;

.field private mBoundsF:Landroid/graphics/RectF;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheValid:Z

.field private mCachedHeight:I

.field private mCachedWidth:I

.field private mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mDrawCircularShadow:Z

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaskedPaint:Landroid/graphics/Paint;

.field private mSelectorAlpha:I

.field private mSelectorColor:I

.field private mSelectorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDrawCircularShadow:Z

    const/16 v1, 0x96

    .line 71
    iput v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorAlpha:I

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheValid:Z

    .line 80
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isPressed:Z

    .line 95
    sget-object v2, Lcom/mikepenz/materialdrawer/R$styleable;->BezelImageView:[I

    const v3, 0x7f1200ba

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget p2, Lcom/mikepenz/materialdrawer/R$styleable;->BezelImageView_biv_maskDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 102
    :cond_0
    sget p2, Lcom/mikepenz/materialdrawer/R$styleable;->BezelImageView_biv_drawCircularShadow:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDrawCircularShadow:Z

    .line 104
    sget p2, Lcom/mikepenz/materialdrawer/R$styleable;->BezelImageView_biv_selectorOnPress:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorColor:I

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    .line 110
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    .line 113
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 121
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 124
    iget p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorColor:I

    if-eqz p1, :cond_1

    .line 125
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorAlpha:I

    iget p3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorColor:I

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    iget v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isSelected:Z

    .line 247
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isSelected:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isSelected:Z

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    .line 265
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 270
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 271
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isDuplicateParentStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    return-void

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 187
    :cond_1
    iget v2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedWidth:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedHeight:I

    if-ne v1, v2, :cond_2

    .line 189
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 195
    iput v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedWidth:I

    .line 196
    iput v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedHeight:I

    .line 199
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xc

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 202
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isSelected:Z

    if-eqz v3, :cond_4

    .line 204
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 207
    :cond_3
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 211
    :cond_4
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 213
    :goto_1
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 215
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 217
    :cond_5
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isSelected:Z

    if-eqz v1, :cond_7

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 219
    iget v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedWidth:I

    int-to-float v6, v3

    iget v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCachedHeight:I

    int-to-float v7, v3

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_6

    .line 221
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    .line 223
    :cond_6
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 225
    :goto_2
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 227
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 230
    :cond_7
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 238
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isPressed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->isPressed:Z

    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 131
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    .line 132
    iget-boolean p3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mDrawCircularShadow:Z

    if-eqz p3, :cond_0

    .line 133
    new-instance p3, Lcom/mikepenz/materialdrawer/view/BezelImageView$CustomOutline;

    invoke-direct {p3, p0, p1, p2}, Lcom/mikepenz/materialdrawer/view/BezelImageView$CustomOutline;-><init>(Lcom/mikepenz/materialdrawer/view/BezelImageView;II)V

    invoke-virtual {p0, p3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    const/4 p1, 0x0

    invoke-direct {v1, p1, p1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    .line 159
    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    .line 161
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 162
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 166
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mCacheValid:Z

    :cond_1
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "http"

    .line 324
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void

    .line 325
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->setImage$15ce6e06(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/view/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
