.class public final Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionViewHolder"
.end annotation


# instance fields
.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
