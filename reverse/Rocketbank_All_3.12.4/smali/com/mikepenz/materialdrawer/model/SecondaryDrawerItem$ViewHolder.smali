.class final Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;
.super Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;
.source "SecondaryDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private badge:Landroid/widget/TextView;

.field private badgeContainer:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09023c

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->badgeContainer:Landroid/view/View;

    const v0, 0x7f09023b

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem$ViewHolder;->badgeContainer:Landroid/view/View;

    return-object p0
.end method
