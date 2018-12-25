.class public Landroid/support/v7/appcompat/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# instance fields
.field private mDp:I

.field private mPixel:I

.field private mResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 1012
    iput v0, p0, Landroid/support/v7/appcompat/R$layout;->mPixel:I

    .line 1013
    iput v0, p0, Landroid/support/v7/appcompat/R$layout;->mDp:I

    .line 1014
    iput v0, p0, Landroid/support/v7/appcompat/R$layout;->mResource:I

    return-void
.end method


# virtual methods
.method public final asPixel(Landroid/content/Context;)I
    .locals 2

    .line 1063
    iget v0, p0, Landroid/support/v7/appcompat/R$layout;->mPixel:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1064
    iget p1, p0, Landroid/support/v7/appcompat/R$layout;->mPixel:I

    return p1

    .line 1065
    :cond_0
    iget v0, p0, Landroid/support/v7/appcompat/R$layout;->mDp:I

    if-eq v0, v1, :cond_1

    .line 1066
    iget v0, p0, Landroid/support/v7/appcompat/R$layout;->mDp:I

    int-to-float v0, v0

    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1192
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1193
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 1067
    :cond_1
    iget v0, p0, Landroid/support/v7/appcompat/R$layout;->mResource:I

    if-eq v0, v1, :cond_2

    .line 1068
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/appcompat/R$layout;->mResource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final setDp(I)V
    .locals 0

    .line 1033
    iput p1, p0, Landroid/support/v7/appcompat/R$layout;->mDp:I

    return-void
.end method
