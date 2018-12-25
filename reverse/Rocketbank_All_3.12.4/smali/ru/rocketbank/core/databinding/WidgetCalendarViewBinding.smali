.class public final Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;
.super Landroid/databinding/ViewDataBinding;
.source "WidgetCalendarViewBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final calendar:Landroid/support/v7/widget/GridLayout;

.field public final calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

.field public final calendarHeader:Landroid/widget/LinearLayout;

.field private mData:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900af

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ad

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 148
    iput-wide v1, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    .line 38
    sget-object v1, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v2, v1}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    iput-object v1, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendar:Landroid/support/v7/widget/GridLayout;

    .line 40
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 42
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarHeader:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 44
    iget-object p1, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->invalidateAll()V

    return-void
.end method

.method public static inflate$336d2cb0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;
    .locals 3

    .line 152
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    const v1, 0x7f0c01ca

    const/4 v2, 0x1

    .line 1156
    invoke-static {p0, v1, p1, v2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    return-object p0
.end method

.method private onChangeDataMonthText$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected final executeBindings()V
    .locals 9

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v4, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mData:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    const-wide/16 v5, 0x7

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v4}, Lru/rocketbank/core/data/binding/RocketCalendarViewData;->getMonthText()Landroid/databinding/ObservableField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v4, 0x0

    .line 130
    invoke-virtual {p0, v4, v0}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->calendarDateDisplay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final invalidateAll()V
    .locals 2

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->onChangeDataMonthText$69e17aa2(I)Z

    move-result p1

    return p1
.end method

.method public final setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mData:Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/core/data/binding/RocketCalendarViewData;

    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;->setData(Lru/rocketbank/core/data/binding/RocketCalendarViewData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
