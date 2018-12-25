.class public final Lru/rocketbank/core/widgets/RocketCalendarView;
.super Landroid/widget/FrameLayout;
.source "RocketCalendarView.kt"

# interfaces
.implements Lru/rocketbank/core/data/binding/CalendarItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;,
        Lru/rocketbank/core/widgets/RocketCalendarView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketCalendarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketCalendarView.kt\nru/rocketbank/core/widgets/RocketCalendarView\n*L\n1#1,235:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/widgets/RocketCalendarView$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

.field private final blackColor:I

.field private calendar:Ljava/util/Calendar;

.field private final calendarView:Landroid/support/v7/widget/GridLayout;

.field private final data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

.field private dayListener:Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;

.field private final grayColor:I

.field private lastData:Lru/rocketbank/core/data/binding/CalendarItemData;

.field private final monthView:Lru/rocketbank/core/widgets/RocketTextView;

.field private nextMonthSelected:Z

.field private final selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private final whiteColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/widgets/RocketCalendarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/RocketCalendarView$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/widgets/RocketCalendarView;->Companion:Lru/rocketbank/core/widgets/RocketCalendarView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCalendarView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->inflate$336d2cb0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    move-result-object v0

    const-string v1, "WidgetCalendarViewBindin\u2026ate(inflater, this, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object v0, v0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "binding.calendarDateDisplay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->monthView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object v0, v0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendar:Landroid/support/v7/widget/GridLayout;

    const-string v1, "binding.calendar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V

    const v0, 0x7f060095

    .line 70
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->grayColor:I

    const v0, 0x7f060254

    .line 71
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    const v0, 0x7f06002e

    .line 72
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    const v0, 0x7f080220

    .line 73
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCalendarView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/view/LayoutInflater;

    .line 61
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p2, v0}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->inflate$336d2cb0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    move-result-object p2

    const-string v0, "WidgetCalendarViewBindin\u2026ate(inflater, this, true)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "binding.calendarDateDisplay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->monthView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 65
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendar:Landroid/support/v7/widget/GridLayout;

    const-string v0, "binding.calendar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    .line 66
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 68
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {p2, v0}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V

    const p2, 0x7f060095

    .line 70
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->grayColor:I

    const p2, 0x7f060254

    .line 71
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    const p2, 0x7f06002e

    .line 72
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    const p2, 0x7f080220

    .line 73
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCalendarView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/view/LayoutInflater;

    .line 61
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p2, p3}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->inflate$336d2cb0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    move-result-object p2

    const-string p3, "WidgetCalendarViewBindin\u2026ate(inflater, this, true)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    const-string p3, "binding.calendarDateDisplay"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->monthView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 65
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendar:Landroid/support/v7/widget/GridLayout;

    const-string p3, "binding.calendar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    .line 66
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 68
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V

    const p2, 0x7f060095

    .line 70
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->grayColor:I

    const p2, 0x7f060254

    .line 71
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    const p2, 0x7f06002e

    .line 72
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    const p2, 0x7f080220

    .line 73
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    new-instance p1, Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCalendarView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/view/LayoutInflater;

    .line 61
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p2, p3}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->inflate$336d2cb0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    move-result-object p2

    const-string p3, "WidgetCalendarViewBindin\u2026ate(inflater, this, true)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    const-string p3, "binding.calendarDateDisplay"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->monthView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 65
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p2, p2, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendar:Landroid/support/v7/widget/GridLayout;

    const-string p3, "binding.calendar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    .line 66
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 68
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->binding:Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V

    const p2, 0x7f060095

    .line 70
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->grayColor:I

    const p2, 0x7f060254

    .line 71
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    const p2, 0x7f06002e

    .line 72
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    const p2, 0x7f080220

    .line 73
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V
    .locals 3

    .line 165
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0c0112

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->bind(Landroid/view/View;)Lru/rocketbank/core/databinding/ItemCalendarBinding;

    move-result-object v0

    .line 167
    new-instance v1, Lru/rocketbank/core/data/binding/CalendarItemData;

    invoke-direct {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;-><init>()V

    .line 168
    invoke-virtual {v0, v1}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setData(Lru/rocketbank/core/data/binding/CalendarItemData;)V

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object p2

    iget p4, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->grayColor:I

    invoke-virtual {p2, p4}, Landroid/databinding/ObservableInt;->set(I)V

    .line 190
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getDayText()Landroid/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->lastData:Lru/rocketbank/core/data/binding/CalendarItemData;

    const-string p2, "view"

    .line 172
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketCalendarView;->animateView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getDayText()Landroid/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableInt;->set(I)V

    .line 175
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object p2

    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 176
    move-object p2, p0

    check-cast p2, Lru/rocketbank/core/data/binding/CalendarItemClickListener;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setListener(Lru/rocketbank/core/data/binding/CalendarItemClickListener;)V

    .line 177
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->isDelivery()Landroid/databinding/ObservableBoolean;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 178
    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketCalendarView;->animateView(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getDayText()Landroid/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->isDelivery()Landroid/databinding/ObservableBoolean;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 184
    move-object p2, p0

    check-cast p2, Lru/rocketbank/core/data/binding/CalendarItemClickListener;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setListener(Lru/rocketbank/core/data/binding/CalendarItemClickListener;)V

    .line 185
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    invoke-virtual {p2, p3}, Landroid/databinding/ObservableInt;->set(I)V

    .line 186
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/CalendarItemData;->isNextMonth()Landroid/databinding/ObservableBoolean;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 194
    :goto_0
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static animateView(Landroid/view/View;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v0, 0x190

    .line 200
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final fillDeliveryDays(IILandroid/view/LayoutInflater;)V
    .locals 5

    .line 141
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v1, "calendar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_1

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v0, p1

    .line 148
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p1

    move v3, v1

    goto :goto_0

    :cond_1
    move v0, p2

    move p1, v2

    move v3, p1

    :goto_0
    if-gt p1, v0, :cond_2

    .line 156
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v2, v4, v3}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    add-int/lit8 p2, p2, -0x1

    if-eq p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v2, p1, v2}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final fillOrdinaryDays(ILandroid/view/LayoutInflater;)I
    .locals 9

    .line 107
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v1, "calendar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2096
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v1, :cond_1

    const-string v2, "calendar"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v3, :cond_c

    .line 111
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_3

    const-string v1, "calendar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 3096
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_4

    const-string v6, "calendar"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-le v2, v3, :cond_a

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_6

    const-string v6, "calendar"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_7

    const-string v6, "calendar"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 116
    iget-object v6, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v6, :cond_8

    const-string v8, "calendar"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v6, v7, v3}, Ljava/util/Calendar;->add(II)V

    .line 117
    iget-object v6, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v6, :cond_9

    const-string v8, "calendar"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int v1, v0, v2

    add-int/2addr v1, v7

    if-gt v1, v0, :cond_a

    move v2, v5

    .line 119
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3164
    invoke-direct {p0, p2, v4, v6, v5}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    add-int/2addr v2, v3

    if-eq v1, v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    move v2, v5

    :cond_b
    :goto_3
    if-ge v3, p1, :cond_d

    .line 124
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4164
    invoke-direct {p0, p2, v4, v0, v5}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    sub-int v0, p1, v1

    add-int/2addr v0, v3

    move v2, v5

    :goto_4
    if-ge v0, p1, :cond_d

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5164
    invoke-direct {p0, p2, v4, v1, v5}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    return v2
.end method


# virtual methods
.method public final onItemClicked(Landroid/view/View;Lru/rocketbank/core/data/binding/CalendarItemData;)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calendarItemData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->lastData:Lru/rocketbank/core/data/binding/CalendarItemData;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/CalendarItemData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->blackColor:I

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 208
    :cond_0
    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->lastData:Lru/rocketbank/core/data/binding/CalendarItemData;

    .line 209
    invoke-virtual {p2}, Lru/rocketbank/core/data/binding/CalendarItemData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p2}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->whiteColor:I

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 211
    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketCalendarView;->animateView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p2}, Lru/rocketbank/core/data/binding/CalendarItemData;->isNextMonth()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result p1

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    .line 214
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->nextMonthSelected:Z

    if-nez p1, :cond_8

    .line 215
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez p1, :cond_1

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v3}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v4, :cond_2

    const-string v5, "calendar"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_3

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;->getMonthText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 218
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->nextMonthSelected:Z

    goto :goto_0

    .line 220
    :cond_4
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->nextMonthSelected:Z

    if-eqz p1, :cond_8

    .line 221
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez p1, :cond_5

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v3}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v4, :cond_6

    const-string v5, "calendar"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_7

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;->getMonthText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->nextMonthSelected:Z

    .line 226
    :cond_8
    :goto_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->dayListener:Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lru/rocketbank/core/data/binding/CalendarItemData;->getDayText()Landroid/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v0, "calendarItemData.dayText.get()!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v2, :cond_b

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;->onDateSelected(III)V

    return-void

    :cond_c
    return-void
.end method

.method public final setCalendar(Ljava/util/Calendar;)V
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public final setDayListener(Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->dayListener:Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;

    return-void
.end method

.method public final updateCalendar$13462e()V
    .locals 7

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v1}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    const-string v3, "calendar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v1, :cond_1

    const-string v2, "calendar"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->data:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;->getMonthText()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendarView:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->removeAllViews()V

    .line 89
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketCalendarView;->calendar:Ljava/util/Calendar;

    if-nez v1, :cond_3

    const-string v4, "calendar"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 90
    invoke-direct {p0, v1, v0}, Lru/rocketbank/core/widgets/RocketCalendarView;->fillOrdinaryDays(ILandroid/view/LayoutInflater;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xe

    .line 91
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1164
    invoke-direct {p0, v0, v3, v5, v6}, Lru/rocketbank/core/widgets/RocketCalendarView;->add(Landroid/view/LayoutInflater;ILjava/lang/String;Z)V

    add-int/2addr v1, v2

    sub-int/2addr v4, v2

    .line 92
    invoke-direct {p0, v1, v4, v0}, Lru/rocketbank/core/widgets/RocketCalendarView;->fillDeliveryDays(IILandroid/view/LayoutInflater;)V

    return-void
.end method
