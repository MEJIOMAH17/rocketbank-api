.class public final Lru/rocketbank/core/network/model/ShopImage;
.super Ljava/lang/Object;
.source "ShopItemResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/ShopImage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopItemResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopItemResponse.kt\nru/rocketbank/core/network/model/ShopImage\n*L\n1#1,68:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/ShopImage$Companion;


# instance fields
.field private color:Ljava/lang/String;

.field private colorInt:I

.field private image_url:Ljava/lang/String;

.field private position:I

.field private texture_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/ShopImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/ShopImage$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/ShopImage;->Companion:Lru/rocketbank/core/network/model/ShopImage$Companion;

    .line 45
    new-instance v0, Lru/rocketbank/core/network/model/ShopImage$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/ShopImage$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/network/model/ShopImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lru/rocketbank/core/network/model/ShopImage;->position:I

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->image_url:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/network/model/ShopImage;->position:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->image_url:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->color:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopImage;->texture_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorInt()I
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->color:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/arch/lifecycle/MethodCallsLogger;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getImage_url()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 35
    iget v0, p0, Lru/rocketbank/core/network/model/ShopImage;->position:I

    return v0
.end method

.method public final getTexture_url()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopImage;->texture_url:Ljava/lang/String;

    return-object v0
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopImage;->color:Ljava/lang/String;

    return-void
.end method

.method public final setColorInt(I)V
    .locals 0

    .line 40
    iput p1, p0, Lru/rocketbank/core/network/model/ShopImage;->colorInt:I

    return-void
.end method

.method public final setImage_url(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopImage;->image_url:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 35
    iput p1, p0, Lru/rocketbank/core/network/model/ShopImage;->position:I

    return-void
.end method

.method public final setTexture_url(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopImage;->texture_url:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    iget p2, p0, Lru/rocketbank/core/network/model/ShopImage;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/network/model/ShopImage;->image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/network/model/ShopImage;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 64
    iget-object p2, p0, Lru/rocketbank/core/network/model/ShopImage;->texture_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method
