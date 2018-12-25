.class public abstract Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
.source "BaseSecondaryDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/BaseDrawerItem<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)V
    .locals 11

    .line 79
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 85
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getSelectedColor(Landroid/content/Context;)I

    move-result v1

    .line 90
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v2

    .line 91
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result v3

    .line 93
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getIconColor(Landroid/content/Context;)I

    move-result v5

    .line 94
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getSelectedIconColor(Landroid/content/Context;)I

    move-result v7

    .line 97
    iget-object v4, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->view:Landroid/view/View;

    .line 3067
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3068
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v8, 0x1

    .line 3069
    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a1

    aput v10, v8, v9

    invoke-virtual {v1, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2083
    new-array v6, v9, [I

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getSelectableBackground(Landroid/content/Context;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/mikepenz/materialize/util/UIUtils;->getCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4064
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v6, v8, :cond_0

    .line 4065
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4067
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v1

    iget-object v4, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo$3730f3ac(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)V

    .line 102
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v1

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide$3730f3a8(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)Z

    .line 105
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v1

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getSelectedColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->applyToOr$d8581ce(Landroid/support/v7/appcompat/R$id;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->isIconTinted()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v4, v3

    goto :goto_1

    .line 4135
    :cond_2
    invoke-virtual {v1, v0, v5, v2}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon$4fc524c5(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v4, v1

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getSelectedIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->isIconTinted()Z

    move-result v2

    if-nez v1, :cond_3

    move-object v6, v3

    goto :goto_2

    .line 5135
    :cond_3
    invoke-virtual {v1, v0, v7, v2}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon$4fc524c5(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    .line 119
    :goto_2
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->isIconTinted()Z

    move-result v8

    iget-object v9, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static/range {v4 .. v9}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V

    .line 122
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->view:Landroid/view/View;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->level:I

    invoke-static {p1, v0}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->setDrawerVerticalPadding(Landroid/view/View;I)V

    return-void
.end method

.method protected getColor(Landroid/content/Context;)I
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a5

    const v2, 0x7f0600c8

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    const v1, 0x7f0401a2

    const v2, 0x7f0600c2

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public withDescription(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescriptionTextColor(I)Ljava/lang/Object;
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

    .line 38
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDescriptionTextColorRes(I)Ljava/lang/Object;
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

    .line 43
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method
