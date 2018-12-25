.class public final Lru/rocketbank/core/model/TaxGibddPush;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "TaxGibddPush.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/TaxGibddPush$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/TaxGibddPush;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/TaxGibddPush$Companion;


# instance fields
.field private merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/TaxGibddPush$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/TaxGibddPush$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/TaxGibddPush;->Companion:Lru/rocketbank/core/model/TaxGibddPush$Companion;

    .line 33
    new-instance v0, Lru/rocketbank/core/model/TaxGibddPush$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/TaxGibddPush$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/TaxGibddPush;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->title:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->type:Ljava/lang/String;

    .line 20
    const-class v0, Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Merchant;

    iput-object p1, p0, Lru/rocketbank/core/model/TaxGibddPush;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setMerchant(Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/TaxGibddPush;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/TaxGibddPush;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/TaxGibddPush;->type:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 26
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/TaxGibddPush;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_2
    return-void
.end method
