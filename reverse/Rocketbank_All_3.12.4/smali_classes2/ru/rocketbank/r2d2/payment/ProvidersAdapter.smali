.class public final Lru/rocketbank/r2d2/payment/ProvidersAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProvidersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;,
        Lru/rocketbank/r2d2/payment/ProvidersAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/ProvidersAdapter$Companion;

.field private static final TRANSITION_NAME_AVATAR:Ljava/lang/String; = "avatar"

.field private static final TRANSITION_NAME_NAME:Ljava/lang/String; = "name"

.field private static final TRANSITION_NAME_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final firstIndexes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lastIndexes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onItemClickListener:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2<",
            "Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->Companion:Lru/rocketbank/r2d2/payment/ProvidersAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lrx/functions/Action2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrx/functions/Action2<",
            "Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->onItemClickListener:Lrx/functions/Action2;

    .line 22
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-direct {p2, p1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->providers:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->firstIndexes:Ljava/util/HashSet;

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->lastIndexes:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$getOnItemClickListener$p(Lru/rocketbank/r2d2/payment/ProvidersAdapter;)Lrx/functions/Action2;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->onItemClickListener:Lrx/functions/Action2;

    return-object p0
.end method

.method public static final synthetic access$isFirstInSection(Lru/rocketbank/r2d2/payment/ProvidersAdapter;I)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->isFirstInSection(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLastInSection(Lru/rocketbank/r2d2/payment/ProvidersAdapter;I)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->isLastInSection(I)Z

    move-result p0

    return p0
.end method

.method private final isFirstInSection(I)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->firstIndexes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isLastInSection(I)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->lastIndexes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getProvider(I)Lru/rocketbank/core/model/provider/Provider;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/provider/Provider;

    return-object p1
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

    .line 36
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->getProvider(I)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-static {v1, v2, v3}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 40
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "avatar"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "name"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "root"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTransitionName(Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, p1, v0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;-><init>(Lru/rocketbank/r2d2/payment/ProvidersAdapter;Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;Lru/rocketbank/core/model/provider/Provider;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p1, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;-><init>(Lru/rocketbank/r2d2/payment/ProvidersAdapter;)V

    check-cast v0, Lrx/functions/Func1;

    new-instance v1, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$3;-><init>(Lru/rocketbank/r2d2/payment/ProvidersAdapter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-static {p2, p1, v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p2, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0151

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_provider, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setProviders(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->providers:Ljava/util/List;

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->providers:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V
    .locals 5

    const-string v0, "sections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->firstIndexes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->lastIndexes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->firstIndexes:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->lastIndexes:Ljava/util/HashSet;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 74
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->getFirstPosition()I

    move-result v1

    .line 75
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->lastIndexes:Ljava/util/HashSet;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->firstIndexes:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
