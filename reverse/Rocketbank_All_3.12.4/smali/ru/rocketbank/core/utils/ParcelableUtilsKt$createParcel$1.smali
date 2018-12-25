.class public final Lru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1;
.super Ljava/lang/Object;
.source "ParcelableUtils.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/ParcelableUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParcelableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1\n*L\n1#1,11:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $createFromParcel:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1;->$createFromParcel:Lkotlin/jvm/functions/Function1;

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
            ")TT;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1;->$createFromParcel:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker$4f708078()V

    new-array p1, p1, [Landroid/os/Parcelable;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1;->newArray(I)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
