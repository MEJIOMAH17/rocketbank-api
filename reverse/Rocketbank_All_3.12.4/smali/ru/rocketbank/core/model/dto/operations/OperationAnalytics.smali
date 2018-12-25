.class public final Lru/rocketbank/core/model/dto/operations/OperationAnalytics;
.super Ljava/lang/Object;
.source "OperationAnalytics.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;,
        Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;,
        Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/OperationAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion;


# instance fields
.field private category:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

.field private merchant:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion;

    .line 124
    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "`in`.readParcelable<Merc\u2026::class.java.classLoader)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->merchant:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    .line 16
    const-class v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "`in`.readParcelable<Cate\u2026::class.java.classLoader)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->category:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCategory()Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->category:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    return-object v0
.end method

.method public final getMerchant()Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->merchant:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    return-object v0
.end method

.method public final setCategory(Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->category:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    return-void
.end method

.method public final setMerchant(Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->merchant:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->merchant:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->category:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
