.class public final Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "ImageViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final fragment:Landroid/support/v4/app/Fragment;

.field private final imageView:Landroid/widget/ImageView;

.field private final profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

.field private final titleView:Lru/rocketbank/core/widgets/RocketTextView;

.field private userData:Lru/rocketbank/core/realm/UserData;

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private final valueView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropCircleTransformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    const p2, 0x7f0901c7

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f090403

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0903cc

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 32
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setAvatar()V
    .locals 6

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 57
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v1, v4, [Lcom/bumptech/glide/load/Transformation;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    :cond_1
    const-string v1, "male"

    .line 60
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getGender()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0801fb

    goto :goto_1

    :cond_3
    const v1, 0x7f0801fc

    .line 66
    :goto_1
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v1, v4, [Lcom/bumptech/glide/load/Transformation;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final setCover()V
    .locals 6

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 76
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v2, v3, [Lcom/bumptech/glide/load/Transformation;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 78
    :cond_2
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userData:Lru/rocketbank/core/realm/UserData;

    if-eqz v4, :cond_3

    .line 1043
    sget-object v5, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v4}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-virtual {v5, v4}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1019
    :cond_3
    sget-object v4, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_1
    invoke-virtual {v4}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v2, v3, [Lcom/bumptech/glide/load/Transformation;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getProfileHandler()Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    return-object v0
.end method

.method public final onBind(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/UserModel;Lru/rocketbank/core/realm/UserData;)V
    .locals 1

    const-string v0, "userData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 40
    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->userData:Lru/rocketbank/core/realm/UserData;

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getType()I

    move-result p1

    sget-object p2, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getIMAGE_AVATAR()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->setAvatar()V

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->setCover()V

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getType()I

    move-result v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getIMAGE_AVATAR()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;->onAvatarChange(Landroid/view/View;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;->onCoverChange(Landroid/view/View;)V

    :cond_1
    return-void
.end method
