.class public final Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProvidersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/ProvidersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902fb

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    const v0, 0x7f0903a9

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0901d3

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getAvatar()Landroid/widget/ImageView;
    .locals 1

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 1

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final setAvatar(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    return-void
.end method

.method public final setName(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-void
.end method

.method public final setRoot(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    return-void
.end method
