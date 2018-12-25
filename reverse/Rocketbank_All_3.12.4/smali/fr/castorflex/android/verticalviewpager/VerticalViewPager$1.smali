.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$1;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    check-cast p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1090
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget p2, p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
