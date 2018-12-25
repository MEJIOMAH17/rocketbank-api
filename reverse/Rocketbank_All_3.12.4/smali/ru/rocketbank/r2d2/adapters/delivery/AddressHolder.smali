.class public final Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AddressHolder.kt"


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

.field private final data:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

.field private final listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    .line 16
    new-instance p2, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    invoke-direct {p2}, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->data:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    .line 24
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    move-result-object p1

    const-string p2, "ItemAddressBinding.bind(v)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->binding:Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->binding:Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->data:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setData(Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;)V

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->binding:Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V

    return-void
.end method


# virtual methods
.method public final getListener()Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->listener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V
    .locals 2

    const-string v0, "geoObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->data:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;->getAddresstext()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getTextAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressHolder;->binding:Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setGeoObject(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V

    return-void
.end method
