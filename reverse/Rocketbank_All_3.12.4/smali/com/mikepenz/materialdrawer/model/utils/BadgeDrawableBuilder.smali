.class public final Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;
.super Ljava/lang/Object;
.source "BadgeDrawableBuilder.java"


# instance fields
.field private mStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;->mStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 23
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;->mStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->getGradientDrawable()I

    move-result v1

    invoke-static {p1, v1}, Lcom/mikepenz/materialize/util/UIUtils;->getCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1188
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 3188
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    const/4 v3, 0x1

    .line 40
    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
