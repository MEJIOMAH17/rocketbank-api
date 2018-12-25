.class public final Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "ContainerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;,
        Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ItemFactory;,
        Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mDivider:Z

.field private mView:Landroid/view/View;

.field private mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    .line 35
    sget-object v0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9

    .line 66
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    move-object v1, p1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;

    .line 72
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 75
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 86
    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    .line 90
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v4, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2033
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2034
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04019f

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2035
    iget v3, v5, Landroid/util/TypedValue;->data:I

    :cond_1
    if-nez v3, :cond_2

    .line 1051
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 92
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    .line 2191
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2192
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 2193
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, -0x1

    .line 94
    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    sget-object v6, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    const v7, 0x7f070120

    if-ne v2, v6, :cond_3

    .line 98
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    const/4 v8, -0x2

    invoke-virtual {v2, v6, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 100
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    sget-object v5, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->BOTTOM:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    if-ne v2, v5, :cond_4

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :cond_4
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :goto_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public final getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;
    .locals 1

    .line 115
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ItemFactory;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ItemFactory;-><init>()V

    return-object v0
.end method

.method public final getLayoutRes()I
    .locals 1

    const v0, 0x7f0c0158

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    const-string v0, "CONTAINER_ITEM"

    return-object v0
.end method

.method public final withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    return-object p0
.end method

.method public final withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    return-object p0
.end method
