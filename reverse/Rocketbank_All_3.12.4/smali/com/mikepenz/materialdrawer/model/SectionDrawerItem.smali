.class public Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "SectionDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;,
        Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ItemFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private divider:Z

.field private name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 106
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    move-object v1, p1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;

    .line 112
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 115
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 116
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v4

    const v5, 0x7f0401a5

    const v6, 0x7f0600c8

    invoke-static {v4, v0, v5, v6}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v2

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo$3730f3ac(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)V

    .line 125
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->hasDivider()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_0
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v1

    .line 3033
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 3034
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04019f

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3035
    iget v3, v2, Landroid/util/TypedValue;->data:I

    :cond_1
    if-nez v3, :cond_2

    .line 2051
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 132
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;
    .locals 1

    .line 140
    new-instance v0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ItemFactory;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ItemFactory;-><init>()V

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1

    const v0, 0x7f0c0162

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "SECTION_ITEM"

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasDivider()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public withDivider(Z)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    return-object p0
.end method

.method public withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1

    .line 42
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1

    .line 37
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withName(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withTextColor(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1

    .line 1020
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 1021
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    .line 52
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1

    .line 2014
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 2015
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    .line 57
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public bridge synthetic withTypeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method
