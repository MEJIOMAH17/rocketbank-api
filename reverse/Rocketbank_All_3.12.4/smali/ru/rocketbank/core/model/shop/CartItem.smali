.class public final Lru/rocketbank/core/model/shop/CartItem;
.super Ljava/lang/Object;
.source "Cart.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/CartItem$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/shop/CartItem$Companion;


# instance fields
.field private final amount:D

.field private final color:Lru/rocketbank/core/model/shop/Color;

.field private id:Ljava/lang/Long;

.field private final image:Lru/rocketbank/core/network/model/ShopImage;

.field private final shopItem:Lru/rocketbank/core/model/shop/ShopItem;

.field private final size:Lru/rocketbank/core/model/shop/Size;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/shop/CartItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/shop/CartItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/shop/CartItem;->Companion:Lru/rocketbank/core/model/shop/CartItem$Companion;

    .line 73
    new-instance v0, Lru/rocketbank/core/model/shop/CartItem$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/shop/CartItem$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/shop/CartItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-class v0, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "source.readParcelable<Sh\u2026::class.java.classLoader)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/shop/ShopItem;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-class v2, Lru/rocketbank/core/model/shop/Size;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/shop/Size;

    const-class v3, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/shop/Color;

    invoke-direct {p0, v0, v1, v2, p1}, Lru/rocketbank/core/model/shop/CartItem;-><init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V
    .locals 1

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    iput-object p2, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    iput-object p3, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    iput-object p4, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    .line 62
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice()D

    move-result-wide p1

    iput-wide p1, p0, Lru/rocketbank/core/model/shop/CartItem;->amount:D

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->title:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getCart_image()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->image:Lru/rocketbank/core/network/model/ShopImage;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;ILkotlin/jvm/internal/Ref;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 61
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/shop/CartItem;-><init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 69
    instance-of v0, p1, Lru/rocketbank/core/model/shop/CartItem;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/shop/CartItem;

    iget-object v0, p1, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAmount()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/CartItem;->amount:D

    return-wide v0
.end method

.method public final getColor()Lru/rocketbank/core/model/shop/Color;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getImage()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->image:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public final getShopItem()Lru/rocketbank/core/model/shop/ShopItem;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    return-object v0
.end method

.method public final getSize()Lru/rocketbank/core/model/shop/Size;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariant()Lru/rocketbank/core/model/shop/Variant;
    .locals 3

    .line 98
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    iget-object v2, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/shop/ShopItem;->findVariant(Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)Lru/rocketbank/core/model/shop/Variant;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v2, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lru/rocketbank/core/model/shop/Size;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v2, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lru/rocketbank/core/model/shop/Color;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setId(Ljava/lang/Long;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->id:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->size:Lru/rocketbank/core/model/shop/Size;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartItem;->color:Lru/rocketbank/core/model/shop/Color;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_3
    return-void
.end method
