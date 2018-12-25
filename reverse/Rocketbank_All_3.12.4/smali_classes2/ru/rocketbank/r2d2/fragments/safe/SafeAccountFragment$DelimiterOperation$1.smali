.class final Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation$1;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;
    .locals 1

    .line 655
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation$1;->newArray(I)[Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;
    .locals 0

    .line 660
    new-array p1, p1, [Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    return-object p1
.end method
