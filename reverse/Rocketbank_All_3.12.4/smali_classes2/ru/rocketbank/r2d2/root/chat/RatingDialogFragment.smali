.class public final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RatingDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;,
        Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingDialogFragment.kt\nru/rocketbank/r2d2/root/chat/RatingDialogFragment\n*L\n1#1,195:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;

.field private static final RATING:Ljava/lang/String; = "RATING"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public agentApi:Lru/rocketbank/core/network/api/AgentsApi;

.field private cancelView:Lru/rocketbank/core/widgets/RocketTextView;

.field private commentView:Lru/rocketbank/core/widgets/RocketEditText;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private imageView:Landroid/widget/ImageView;

.field private okView:Lru/rocketbank/core/widgets/RocketTextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rating:Lru/rocketbank/core/network/model/Rating;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingSubscription:Lrx/Subscription;

.field private refreshListener:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

.field public rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private titleView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->Companion:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCommentView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/core/widgets/RocketEditText;
    .locals 1

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->commentView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p0, :cond_0

    const-string v0, "commentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCropCircleTransformation$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez p0, :cond_0

    const-string v0, "cropCircleTransformation"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getImageView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/widget/ImageView;
    .locals 1

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->imageView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getRATING$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->RATING:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRating$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/core/network/model/Rating;
    .locals 0

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rating:Lru/rocketbank/core/network/model/Rating;

    return-object p0
.end method

.method public static final synthetic access$getRatingBar$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/widget/RatingBar;
    .locals 1

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->ratingBar:Landroid/widget/RatingBar;

    if-nez p0, :cond_0

    const-string v0, "ratingBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRatingSubscription$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lrx/Subscription;
    .locals 0

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->ratingSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getRefreshListener$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->refreshListener:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

    return-object p0
.end method

.method public static final synthetic access$hideProgress(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->hideProgress()V

    return-void
.end method

.method public static final synthetic access$setCommentView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->commentView:Lru/rocketbank/core/widgets/RocketEditText;

    return-void
.end method

.method public static final synthetic access$setCropCircleTransformation$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method

.method public static final synthetic access$setImageView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setRating$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Lru/rocketbank/core/network/model/Rating;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rating:Lru/rocketbank/core/network/model/Rating;

    return-void
.end method

.method public static final synthetic access$setRatingBar$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Landroid/widget/RatingBar;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->ratingBar:Landroid/widget/RatingBar;

    return-void
.end method

.method public static final synthetic access$setRatingSubscription$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Lrx/Subscription;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->ratingSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setRefreshListener$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->refreshListener:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

    return-void
.end method

.method public static final synthetic access$showProgressExecution(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->showProgressExecution()V

    return-void
.end method

.method private final hideProgress()V
    .locals 1

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private final showProgressExecution()V
    .locals 3

    .line 172
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 175
    new-instance v1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1;-><init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 177
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAgentApi()Lru/rocketbank/core/network/api/AgentsApi;
    .locals 2

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    if-nez v0, :cond_0

    const-string v1, "agentApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 151
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v0, "dialog"

    .line 153
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c013c

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903cc

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0901c7

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f0902c6

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.RatingBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->ratingBar:Landroid/widget/RatingBar;

    const p2, 0x7f0900f3

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->commentView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f090288

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0900b1

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 73
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 74
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAgentsApi()Lru/rocketbank/core/network/api/AgentsApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object p2, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->RATING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/Rating;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rating:Lru/rocketbank/core/network/model/Rating;

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_1

    const-string p2, "titleView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rating:Lru/rocketbank/core/network/model/Rating;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/Rating;->getText()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->okView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_3

    const-string p2, "okView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->cancelView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_4

    const-string p2, "cancelView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$2;-><init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez p1, :cond_5

    const-string p2, "rocketAPI"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rating:Lru/rocketbank/core/network/model/Rating;

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/Rating;->getPermalink()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lru/rocketbank/core/network/api/RocketAPI;->getAgents(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;-><init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final setAgentApi(Lru/rocketbank/core/network/api/AgentsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    return-void
.end method

.method public final setRefreshListener(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;)V
    .locals 1

    const-string v0, "refreshListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->refreshListener:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

    return-void
.end method

.method public final setRocketAPI(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method
