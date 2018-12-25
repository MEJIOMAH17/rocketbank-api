.class final Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "TitlePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2838
    new-instance v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$1;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1843
    new-array p1, p1, [Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;

    return-object p1
.end method
