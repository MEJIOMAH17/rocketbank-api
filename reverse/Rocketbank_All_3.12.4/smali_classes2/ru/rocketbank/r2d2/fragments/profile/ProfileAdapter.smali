.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;
.super Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
.source "ProfileAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

.field private static final FINGERPRINT:I = 0x3e9

.field private static final IMAGE_AVATAR:I = 0x64

.field private static final IMAGE_COVER:I = 0x65

.field private static final MIN_3_ENT:I = 0x2711

.field private static final REFILL_ID:I = 0x2710

.field private static final VIEW_TYPE_IMAGE:I = 0x65


# instance fields
.field private final fragment:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

.field private final profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final userData:Lru/rocketbank/core/realm/UserData;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/core/model/UserModel;Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;Lru/rocketbank/r2d2/data/binding/profile/ProfileData;Lru/rocketbank/core/realm/UserData;Landroid/view/View;I)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userData"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    check-cast p5, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-direct {p0, p5, p7, p8}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->fragment:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    iput-object p6, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userData:Lru/rocketbank/core/realm/UserData;

    return-void
.end method

.method public static final synthetic access$getFINGERPRINT$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->FINGERPRINT:I

    return v0
.end method

.method public static final synthetic access$getIMAGE_AVATAR$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->IMAGE_AVATAR:I

    return v0
.end method

.method public static final synthetic access$getIMAGE_COVER$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->IMAGE_COVER:I

    return v0
.end method

.method public static final synthetic access$getMIN_3_ENT$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->MIN_3_ENT:I

    return v0
.end method

.method public static final synthetic access$getREFILL_ID$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->REFILL_ID:I

    return v0
.end method

.method public static final synthetic access$getVIEW_TYPE_IMAGE$cp()I
    .locals 1

    .line 16
    sget v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->VIEW_TYPE_IMAGE:I

    return v0
.end method

.method private final onBindImage(Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;)V
    .locals 4

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userData:Lru/rocketbank/core/realm/UserData;

    invoke-virtual {p1, v2, v1, v0, v3}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;->onBind(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/UserModel;Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clearTop()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getFragment()Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->fragment:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    return-object v0
.end method

.method public final getProfileHandler()Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final getUserData()Lru/rocketbank/core/realm/UserData;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userData:Lru/rocketbank/core/realm/UserData;

    return-object v0
.end method

.method public final getUserModel()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V
    .locals 0

    .line 46
    sget p2, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->VIEW_TYPE_IMAGE:I

    if-ne p3, p2, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.profile.ImageViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->onBindImage(Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;)V

    :cond_1
    return-void
.end method

.method public final onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    sget v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->VIEW_TYPE_IMAGE:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0c018b

    .line 33
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->fragment:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->fragment:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->profileHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    invoke-direct {p2, p1, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/profile/ImageViewHolder;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :cond_0
    const p2, 0x7f0c00b2

    .line 38
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public final updateUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 26
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method
