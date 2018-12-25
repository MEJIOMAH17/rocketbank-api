.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;


# direct methods
.method constructor <init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$000$7cf87c47(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V

    .line 215
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate()V

    return-void
.end method
