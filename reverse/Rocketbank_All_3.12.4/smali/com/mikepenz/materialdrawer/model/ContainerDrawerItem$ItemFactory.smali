.class public final Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ItemFactory;
.super Ljava/lang/Object;
.source "ContainerDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/materialdrawer/model/utils/ViewHolderFactory<",
        "Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic factory(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1120
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;-><init>(Landroid/view/View;B)V

    return-object v0
.end method
