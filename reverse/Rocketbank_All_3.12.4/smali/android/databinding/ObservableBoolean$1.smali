.class final Landroid/databinding/ObservableBoolean$1;
.super Ljava/lang/Object;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ObservableBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/databinding/ObservableBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableBoolean;
    .locals 2

    .line 106
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableBoolean$1;->createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableBoolean;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/databinding/ObservableBoolean;
    .locals 0

    .line 111
    new-array p1, p1, [Landroid/databinding/ObservableBoolean;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableBoolean$1;->newArray(I)[Landroid/databinding/ObservableBoolean;

    move-result-object p1

    return-object p1
.end method
