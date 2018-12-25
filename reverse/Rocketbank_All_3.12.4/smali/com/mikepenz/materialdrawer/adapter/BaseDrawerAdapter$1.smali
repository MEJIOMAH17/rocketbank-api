.class final Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;
.super Ljava/lang/Object;
.source "BaseDrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    instance-of v2, v1, Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;

    if-eqz v2, :cond_0

    .line 226
    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->handleSelection(Landroid/view/View;I)V

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-static {v2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->access$000(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-static {v2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->access$000(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;->onClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    .line 236
    :cond_1
    instance-of v2, v1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    if-eqz v2, :cond_2

    .line 237
    move-object v2, v1

    check-cast v2, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    .line 238
    invoke-virtual {v2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    :cond_2
    return-void
.end method
