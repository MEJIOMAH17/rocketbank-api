.class public Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem$BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BasePrimaryDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseViewHolder"
.end annotation


# instance fields
.field protected description:Landroid/widget/TextView;

.field protected icon:Landroid/widget/ImageView;

.field protected name:Landroid/widget/TextView;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem$BaseViewHolder;->view:Landroid/view/View;

    const v0, 0x7f090240

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem$BaseViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f090244

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem$BaseViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f09023d

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BasePrimaryDrawerItem$BaseViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method
