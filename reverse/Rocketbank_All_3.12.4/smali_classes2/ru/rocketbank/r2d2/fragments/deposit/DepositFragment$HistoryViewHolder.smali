.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;
.super Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;
.source "DepositFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryViewHolder"
.end annotation


# instance fields
.field backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

.field categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

.field imageView:Landroid/widget/ImageView;

.field labelView:Lru/rocketbank/core/widgets/RocketTextView;

.field statusImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

.field titleView:Lru/rocketbank/core/widgets/RocketTextView;

.field valueView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    .line 701
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    const p1, 0x7f0901c7

    .line 703
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f09035a

    .line 704
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    const p1, 0x7f09006b

    .line 705
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0900cd

    .line 706
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f0903cc

    .line 708
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090403

    .line 709
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09020a

    .line 710
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public hideImage()V
    .locals 2

    .line 763
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAmount(F)V
    .locals 5

    .line 759
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    float-to-double v2, p1

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, p1, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBackgroundWithText(Ljava/lang/String;IZ)V
    .locals 2

    .line 727
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 732
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setImage(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1b5

    goto :goto_0

    :cond_0
    const/16 p1, 0x170

    .line 733
    :goto_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setStatusIcon(I)V

    return-void
.end method

.method public setCategoryGlymph()V
    .locals 4

    .line 737
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "\ue437"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 715
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 716
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->categoryGlymphView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->backgroundStubView:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    const-string v0, "FEED_IMAGE_LOADING"

    const-string v1, "Loading: "

    .line 721
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 751
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->labelView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 697
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStatusIcon(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 768
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x1b5

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 771
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const/16 v0, 0x170

    if-ne p1, v0, :cond_2

    .line 774
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->statusImageView:Landroid/widget/ImageView;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method
