.class public Lcom/mikepenz/materialize/holder/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 44
    iput p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 36
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1258
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 p3, 0x1

    .line 1259
    new-array p3, p3, [I

    const p4, 0x10100a1

    aput p4, p3, v0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1260
    new-array p2, v0, [I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 293
    new-instance p2, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;

    invoke-direct {p2, p0, p1, p3}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_0
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    const/16 p0, 0x8

    .line 301
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIconRes()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return v0
.end method
