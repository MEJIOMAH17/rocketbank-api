.class public final Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddressesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getListener()Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items!![position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->onBind(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 21
    new-instance p2, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V

    return-object p2
.end method

.method public final setListener(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    return-void
.end method

.method public final swap(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->items:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->notifyDataSetChanged()V

    return-void
.end method
