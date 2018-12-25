.class public final Lru/rocketbank/core/model/card/LinkedCard$$special$$inlined$createParcel$1;
.super Ljava/lang/Object;
.source "ParcelableUtils.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/card/LinkedCard;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/model/card/LinkedCard;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParcelableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1\n+ 2 LinkedCard.kt\nru/rocketbank/core/model/card/LinkedCard\n*L\n1#1,11:1\n65#2:12\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lru/rocketbank/core/model/card/LinkedCard;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lru/rocketbank/core/model/card/LinkedCard;

    invoke-direct {v0, p1}, Lru/rocketbank/core/model/card/LinkedCard;-><init>(Landroid/os/Parcel;)V

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/card/LinkedCard$$special$$inlined$createParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lru/rocketbank/core/model/card/LinkedCard;"
        }
    .end annotation

    .line 9
    new-array p1, p1, [Lru/rocketbank/core/model/card/LinkedCard;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/card/LinkedCard$$special$$inlined$createParcel$1;->newArray(I)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
