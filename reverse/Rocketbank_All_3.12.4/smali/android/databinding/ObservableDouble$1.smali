.class final Landroid/databinding/ObservableDouble$1;
.super Ljava/lang/Object;
.source "ObservableDouble.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ObservableDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/databinding/ObservableDouble;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableDouble;
    .locals 3

    .line 107
    new-instance v0, Landroid/databinding/ObservableDouble;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/databinding/ObservableDouble;-><init>(D)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableDouble$1;->createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableDouble;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/databinding/ObservableDouble;
    .locals 0

    .line 112
    new-array p1, p1, [Landroid/databinding/ObservableDouble;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableDouble$1;->newArray(I)[Landroid/databinding/ObservableDouble;

    move-result-object p1

    return-object p1
.end method
