.class public final Lcom/mikepenz/materialdrawer/holder/ImageHolder;
.super Lcom/mikepenz/materialize/holder/ImageHolder;
.source "ImageHolder.java"


# instance fields
.field private mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    return-void
.end method


# virtual methods
.method public final decideIcon$4fc524c5(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    invoke-virtual {v0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mikepenz/materialize/util/UIUtils;->getCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 114
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-nez p1, :cond_2

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v0
.end method
