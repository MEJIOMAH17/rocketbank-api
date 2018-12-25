.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Lbolts/Task$UnobservedExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Task$UnobservedExceptionHandler<",
        "Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .line 3137
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2142
    new-array p1, p1, [Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;

    return-object p1
.end method
