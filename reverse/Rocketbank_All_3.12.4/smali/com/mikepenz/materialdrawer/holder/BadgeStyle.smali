.class public final Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
.super Ljava/lang/Object;
.source "BadgeStyle.java"


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mGradientDrawable:I

.field private mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801b1

    .line 19
    iput v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    .line 2020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    const/4 v1, 0x2

    .line 2021
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setDp(I)V

    .line 25
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 3020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    const/4 v1, 0x3

    .line 3021
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setDp(I)V

    .line 26
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 4020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    const/16 v1, 0x14

    .line 4021
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setDp(I)V

    .line 27
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-void
.end method


# virtual methods
.method public final getGradientDrawable()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    return v0
.end method

.method public final style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 168
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x10

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;-><init>(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)V

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;->build(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 4064
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_0

    .line 4065
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4067
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 5064
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_2

    .line 5065
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5067
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    if-eqz v1, :cond_3

    .line 178
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->applyToOr$d8581ce(Landroid/support/v7/appcompat/R$id;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    .line 185
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v1

    .line 186
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 189
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    return-void
.end method

.method public final withBadgeBackground(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    return-object p0
.end method

.method public final withTextColor$6a1c8365()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 2

    .line 1020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    const/4 v1, -0x1

    .line 1021
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 82
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method
