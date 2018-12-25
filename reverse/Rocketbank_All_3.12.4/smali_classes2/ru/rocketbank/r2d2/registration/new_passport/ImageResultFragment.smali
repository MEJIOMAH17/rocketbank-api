.class public final Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;
.super Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;
.source "ImageResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageResultFragment.kt\nru/rocketbank/r2d2/registration/new_passport/ImageResultFragment\n*L\n1#1,64:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;

.field private static final KEY_PATH:Ljava/lang/String; = "PATH"

.field private static final KEY_PHOTO_TITLE:Ljava/lang/String; = "PHOTO_TITLE"

.field private static final KEY_STEP:Ljava/lang/String; = "STEP"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private filePath:Ljava/lang/String;

.field private photoTitle:Ljava/lang/String;

.field private step:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->filePath:Ljava/lang/String;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->photoTitle:Ljava/lang/String;

    return-void
.end method

.method public static final newInstance(ILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final getBottomButtonText()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f110077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.back)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getMainButtonText()Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f110314

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.next)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getStepTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->photoTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected final init()V
    .locals 2

    .line 41
    invoke-super {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->init()V

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getBinding()Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    const-string v1, "binding.imageView3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getBinding()Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object v1

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final onBottomButtonClicked()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "PATH"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->filePath:Ljava/lang/String;

    const-string v0, "PHOTO_TITLE"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->photoTitle:Ljava/lang/String;

    const-string v0, "STEP"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->step:I

    return-void

    :cond_2
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onMainButtonClicked()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iget v1, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->step:I

    iget-object v2, p0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->uploadImage(ILjava/lang/String;)V

    return-void
.end method
