.class public Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecentTransferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field imgLogo:Landroid/widget/ImageView;

.field imgMore:Landroid/widget/ImageView;

.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

.field tvName:Landroid/widget/TextView;

.field tvNumberCard:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;Landroid/view/View;)V
    .locals 2

    .line 218
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    .line 219
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090226

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->imgLogo:Landroid/widget/ImageView;

    const v0, 0x7f090316

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0903f2

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0903f3

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->tvNumberCard:Landroid/widget/TextView;

    const v0, 0x7f090202

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->imgMore:Landroid/widget/ImageView;

    .line 225
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->access$500(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->imgMore:Landroid/widget/ImageView;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->getRemittance()Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getIcon_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->access$600(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getIcon_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->imgLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->access$600(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f080175

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->imgLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 244
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->tvNumberCard:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->getFormatted_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;

    invoke-direct {v2, p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
