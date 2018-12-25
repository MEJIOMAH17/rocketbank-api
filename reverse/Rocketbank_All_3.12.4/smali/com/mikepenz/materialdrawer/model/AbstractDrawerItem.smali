.class public abstract Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.super Ljava/lang/Object;
.source "AbstractDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem<",
        "TT;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Selectable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mEnabled:Z

.field protected mIdentifier:I

.field public mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field protected mOnPostBindViewListener$4d96a3f0:Landroid/arch/lifecycle/GeneratedAdapter;

.field protected mSelectable:Z

.field protected mSelected:Z

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    .line 69
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 101
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener$4d96a3f0:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    .line 160
    iget v2, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    iget p1, p1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;->factory(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 136
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;->factory(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 143
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public abstract getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;
.end method

.method public getIdentifier()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    return v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getOnPostBindViewListener$17a5e071()Landroid/arch/lifecycle/GeneratedAdapter;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener$4d96a3f0:Landroid/arch/lifecycle/GeneratedAdapter;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getFactory()Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;->factory(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    return v0
.end method

.method public onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public withEnabled(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 47
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    return-object p0
.end method

.method public withIdentifier(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 23
    iput p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:I

    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;",
            ")TT;"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public withPostOnBindViewListener$1adaf3bd(Landroid/arch/lifecycle/GeneratedAdapter;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ")TT;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener$4d96a3f0:Landroid/arch/lifecycle/GeneratedAdapter;

    return-object p0
.end method

.method public withSelectable(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 73
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    return-object p0
.end method

.method public withSetSelected(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 60
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    return-object p0
.end method

.method public withTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mTag:Ljava/lang/Object;

    return-object p0
.end method
