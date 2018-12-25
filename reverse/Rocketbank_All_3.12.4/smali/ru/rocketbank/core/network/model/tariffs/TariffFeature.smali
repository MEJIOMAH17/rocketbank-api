.class public final Lru/rocketbank/core/network/model/tariffs/TariffFeature;
.super Ljava/lang/Object;
.source "TariffFeature.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/tariffs/TariffFeature$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffFeature.kt\nru/rocketbank/core/network/model/tariffs/TariffFeature\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,36:1\n7#2,4:37\n*E\n*S KotlinDebug\n*F\n+ 1 TariffFeature.kt\nru/rocketbank/core/network/model/tariffs/TariffFeature\n*L\n33#1,4:37\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/tariffs/TariffFeature;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/tariffs/TariffFeature$Companion;


# instance fields
.field private iconColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_color"
    .end annotation
.end field

.field private iconText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_text"
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/tariffs/TariffFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/tariffs/TariffFeature$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->Companion:Lru/rocketbank/core/network/model/tariffs/TariffFeature$Companion;

    .line 37
    new-instance v0, Lru/rocketbank/core/network/model/tariffs/TariffFeature$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/tariffs/TariffFeature$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 40
    sput-object v0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->text:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconColor:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconText:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconColor:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`in`.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getIconColor()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconText()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconText:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setIconColor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconColor:Ljava/lang/String;

    return-void
.end method

.method public final setIconText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconText:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->text:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->iconText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
