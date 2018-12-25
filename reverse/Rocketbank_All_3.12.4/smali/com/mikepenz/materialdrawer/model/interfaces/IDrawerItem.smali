.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
.super Ljava/lang/Object;
.source "IDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract withSetSelected(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method
