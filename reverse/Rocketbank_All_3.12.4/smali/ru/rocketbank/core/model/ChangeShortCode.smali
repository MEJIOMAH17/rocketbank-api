.class public final Lru/rocketbank/core/model/ChangeShortCode;
.super Lru/rocketbank/core/model/dto/ChangeCheckCard;
.source "ChangeShortCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/ChangeShortCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeShortCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeShortCode.kt\nru/rocketbank/core/model/ChangeShortCode\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,28:1\n7#2,4:29\n*E\n*S KotlinDebug\n*F\n+ 1 ChangeShortCode.kt\nru/rocketbank/core/model/ChangeShortCode\n*L\n25#1,4:29\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/ChangeShortCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/ChangeShortCode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/ChangeShortCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/ChangeShortCode$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/ChangeShortCode;->Companion:Lru/rocketbank/core/model/ChangeShortCode$Companion;

    .line 29
    new-instance v0, Lru/rocketbank/core/model/ChangeShortCode$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/ChangeShortCode$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 32
    sput-object v0, Lru/rocketbank/core/model/ChangeShortCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/ChangeCheckCard;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/dto/ChangeCheckCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
