.class public final Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "DividerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;,
        Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ItemFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 30
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    move-object v1, p1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    .line 36
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 39
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 40
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 42
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 46
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v1

    .line 2033
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2034
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f04019f

    invoke-virtual {v5, v6, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2035
    iget v3, v2, Landroid/util/TypedValue;->data:I

    :cond_0
    if-nez v3, :cond_1

    .line 1051
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 46
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public final getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;
    .locals 1

    .line 54
    new-instance v0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ItemFactory;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ItemFactory;-><init>()V

    return-object v0
.end method

.method public final getLayoutRes()I
    .locals 1

    const v0, 0x7f0c0159

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    const-string v0, "DIVIDER_ITEM"

    return-object v0
.end method
