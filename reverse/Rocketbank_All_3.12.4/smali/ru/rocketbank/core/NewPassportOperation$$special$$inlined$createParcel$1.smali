.class public final Lru/rocketbank/core/NewPassportOperation$$special$$inlined$createParcel$1;
.super Ljava/lang/Object;
.source "ParcelableUtils.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/NewPassportOperation;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/NewPassportOperation;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParcelableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt$createParcel$1\n+ 2 NewPassportOperation.kt\nru/rocketbank/core/NewPassportOperation\n*L\n1#1,11:1\n33#2:12\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    const-string v0, "source"

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    new-instance v0, Lru/rocketbank/core/NewPassportOperation;

    .line 1012
    invoke-direct {v0, p1}, Lru/rocketbank/core/NewPassportOperation;-><init>(Landroid/os/Parcel;)V

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2009
    new-array p1, p1, [Lru/rocketbank/core/NewPassportOperation;

    return-object p1
.end method
