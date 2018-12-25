.class public final Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "SourceViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourceViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/SourceViewHolder\n*L\n1#1,33:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

.field private final sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/operation/vh/SourceData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    .line 15
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    move-result-object p1

    const-string v0, "LayoutOperationSourceBinding.bind(itemView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    .line 16
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;->setData(Lru/rocketbank/r2d2/root/operation/vh/SourceData;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    return-object v0
.end method

.method public final getSourceData()Lru/rocketbank/r2d2/root/operation/vh/SourceData;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    return-object v0
.end method

.method public final onBind()V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

    if-eqz v0, :cond_3

    .line 22
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/SourceData;->getImageSource()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->sourceData:Lru/rocketbank/r2d2/root/operation/vh/SourceData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/SourceData;->getSourceName()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-lez v1, :cond_2

    .line 27
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_2
    return-void

    :cond_3
    return-void
.end method
