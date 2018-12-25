.class public Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RocketViewHolder.kt"


# instance fields
.field private final dayTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090122

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;->dayTitleView:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;->dayTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;->dayTitleView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDayTitleView()Landroid/widget/TextView;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;->dayTitleView:Landroid/widget/TextView;

    return-object v0
.end method
