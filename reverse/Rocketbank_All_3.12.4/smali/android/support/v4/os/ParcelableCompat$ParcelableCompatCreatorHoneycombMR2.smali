.class final Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ParcelableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCompatCreatorHoneycombMR2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks$1627266e:Lbolts/Task$UnobservedExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task$UnobservedExceptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbolts/Task$UnobservedExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task$UnobservedExceptionHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks$1627266e:Lbolts/Task$UnobservedExceptionHandler;

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks$1627266e:Lbolts/Task$UnobservedExceptionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbolts/Task$UnobservedExceptionHandler;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks$1627266e:Lbolts/Task$UnobservedExceptionHandler;

    invoke-interface {v0, p1, p2}, Lbolts/Task$UnobservedExceptionHandler;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks$1627266e:Lbolts/Task$UnobservedExceptionHandler;

    invoke-interface {v0, p1}, Lbolts/Task$UnobservedExceptionHandler;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
