.class final Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;
.super Ljava/lang/Object;
.source "BaseDrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 247
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 250
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->access$100(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 252
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->access$100(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;->this$0:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return v0

    :cond_0
    return v0
.end method
