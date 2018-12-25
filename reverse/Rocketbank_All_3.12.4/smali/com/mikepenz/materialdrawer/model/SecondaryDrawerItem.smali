.class public Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;
.source "SecondaryDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;,
        Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ItemFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field protected mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem;-><init>()V

    .line 21
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 68
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    move-object v1, p1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;

    .line 74
    move-object v2, p1

    check-cast v2, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;

    invoke-virtual {p0, v2}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)V

    .line 77
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide$3730f3a8(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 81
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getBadge()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getBadgeStyle()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object v0
.end method

.method public getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;
    .locals 1

    .line 97
    new-instance v0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ItemFactory;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ItemFactory;-><init>()V

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1

    const v0, 0x7f0c015f

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "SECONDARY_ITEM"

    return-object v0
.end method

.method public withBadge(I)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
    .locals 1

    .line 37
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
    .locals 1

    .line 31
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withBadge(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withBadge(I)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object p0
.end method

.method public bridge synthetic withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    move-result-object p1

    return-object p1
.end method
