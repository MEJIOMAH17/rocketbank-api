.class public abstract Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "BaseDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected colorStateList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field protected disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field protected iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected iconTinted:Z

.field protected level:I

.field protected name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field protected selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field protected selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return-void
.end method


# virtual methods
.method protected getColor(Landroid/content/Context;)I
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a4

    const v2, 0x7f0600c7

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a2

    const v2, 0x7f0600c2

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDisabledIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a3

    const v2, 0x7f0600c5

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getDisabledIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a1

    const v2, 0x7f0600c1

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method protected getSelectedColor(Landroid/content/Context;)I
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a6

    const v2, 0x7f0600c9

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getSelectedIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method protected getSelectedIconColor(Landroid/content/Context;)I
    .locals 3

    .line 324
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a7

    const v2, 0x7f0600ca

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method protected getSelectedTextColor(Landroid/content/Context;)I
    .locals 3

    .line 298
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a7

    const v2, 0x7f0600ca

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method protected getTextColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 9

    .line 335
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    if-eqz v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 336
    :cond_0
    new-instance v0, Landroid/util/Pair;

    add-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8034
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a1

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    new-array v3, v3, [I

    aput p2, v3, v8

    aput p1, v3, v5

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 336
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isIconTinted()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return v0
.end method

.method public withDisabledIconColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 7020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 7021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 164
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledIconColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 8014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 8015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 169
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 4020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 4021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 134
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 5014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 5015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 139
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIcon(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/iconics/typeface/IIcon;",
            ")TT;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/ImageHolder;",
            ")TT;"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIconColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 5020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 5021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 144
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 6014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 6015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 149
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconTinted(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return-object p0
.end method

.method public withIconTintingEnabled(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 181
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return-object p0
.end method

.method public withLevel(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 208
    iput p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return-object p0
.end method

.method public withName(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/StringHolder;",
            ")TT;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withSelectedColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 1021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 104
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 2015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 109
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedIcon(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withSelectedIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withSelectedIconColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 6020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 6021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 154
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedIconColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 7014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 7015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 159
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 3020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 3021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 124
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 4014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 4015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 129
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 2021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 114
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 3014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 3015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 119
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTintSelectedIcon(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method
