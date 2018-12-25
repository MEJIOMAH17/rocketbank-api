.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;


# direct methods
.method private constructor <init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V
    .locals 0

    .line 2714
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;B)V
    .locals 0

    .line 2714
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;-><init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 2717
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->dataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 2722
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->dataSetChanged()V

    return-void
.end method
