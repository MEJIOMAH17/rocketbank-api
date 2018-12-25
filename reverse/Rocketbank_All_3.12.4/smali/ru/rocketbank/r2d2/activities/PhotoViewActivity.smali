.class public final Lru/rocketbank/r2d2/activities/PhotoViewActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "PhotoViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

.field private static final PHOTO_VIEW_URI:Ljava/lang/String; = "PHOTO_VIEW_URI"

.field private static final PHOTO_VIEW_URL:Ljava/lang/String; = "PHOTO_VIEW_URL"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private target:Lcom/bumptech/glide/request/target/SimpleTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/SimpleTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getImageView$p(Lru/rocketbank/r2d2/activities/PhotoViewActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .locals 1

    .line 17
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-nez p0, :cond_0

    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getPHOTO_VIEW_URI$cp()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->PHOTO_VIEW_URI:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPHOTO_VIEW_URL$cp()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->PHOTO_VIEW_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setImageView$p(Lru/rocketbank/r2d2/activities/PhotoViewActivity;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->keepUnlocked()V

    .line 70
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004d

    .line 41
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->setContentView(I)V

    const p1, 0x7f0901c7

    .line 42
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void

    :cond_1
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->target:Lcom/bumptech/glide/request/target/SimpleTarget;

    if-nez v0, :cond_0

    const-string v1, "target"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 75
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 48
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->PHOTO_VIEW_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->PHOTO_VIEW_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 53
    new-instance v2, Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/activities/PhotoViewActivity;)V

    check-cast v2, Lcom/bumptech/glide/request/target/SimpleTarget;

    iput-object v2, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->target:Lcom/bumptech/glide/request/target/SimpleTarget;

    if-nez v1, :cond_0

    .line 60
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const-string v1, "Glide.with(this).load(url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const-string v1, "Glide.with(this).load(uri)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->target:Lcom/bumptech/glide/request/target/SimpleTarget;

    if-nez v1, :cond_1

    const-string v2, "target"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
