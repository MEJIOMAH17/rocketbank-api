.class public final Lru/rocketbank/core/databinding/ItemCalendarBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ItemCalendarBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback25:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/core/data/binding/CalendarItemData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/core/data/binding/CalendarItemClickListener;

.field private final mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

.field public final textDay:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 279
    iput-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 36
    invoke-static {p1, p2, v1, v0, v0}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 37
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object v1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

    .line 38
    iget-object v1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/SquareLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 39
    aget-object p1, p1, v1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->textDay:Lru/rocketbank/core/widgets/RocketTextView;

    .line 40
    iget-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->textDay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setRootTag(Landroid/view/View;)V

    .line 43
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mCallback25:Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/core/databinding/ItemCalendarBinding;
    .locals 3

    .line 299
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    const-string v1, "layout/item_calendar_0"

    .line 1303
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view tag isn\'t correct on view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_0
    new-instance v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;

    invoke-direct {v1, v0, p0}, Lru/rocketbank/core/databinding/ItemCalendarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v1
.end method

.method private onChangeDataBackground$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 141
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

.method private onChangeDataDayText$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 132
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

.method private onChangeDataIsDelivery$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 150
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

.method private onChangeDataTextColor$6c1f40ed(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 123
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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    .line 263
    iget-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mListener:Lru/rocketbank/core/data/binding/CalendarItemClickListener;

    .line 265
    iget-object v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mData:Lru/rocketbank/core/data/binding/CalendarItemData;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 275
    invoke-interface {p1, p2, v0}, Lru/rocketbank/core/data/binding/CalendarItemClickListener;->onItemClicked(Landroid/view/View;Lru/rocketbank/core/data/binding/CalendarItemData;)V

    :cond_1
    return-void
.end method

.method protected final executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 161
    iput-wide v4, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v6, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mData:Lru/rocketbank/core/data/binding/CalendarItemData;

    const-wide/16 v7, 0x6f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v10, 0x64

    const-wide/16 v12, 0x62

    const-wide/16 v14, 0x61

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    and-long v18, v2, v14

    cmp-long v7, v18, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/CalendarItemData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 183
    :goto_0
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    and-long v18, v2, v12

    cmp-long v20, v18, v4

    if-eqz v20, :cond_3

    if-eqz v6, :cond_2

    .line 195
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/CalendarItemData;->getDayText()Landroid/databinding/ObservableField;

    move-result-object v18

    move-object/from16 v8, v18

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x1

    .line 197
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 202
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v8

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    and-long v18, v2, v10

    cmp-long v8, v18, v4

    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    .line 209
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/CalendarItemData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v14, 0x2

    .line 211
    invoke-virtual {v1, v14, v8}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_5

    .line 216
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    const-wide/16 v14, 0x68

    and-long v18, v2, v14

    cmp-long v14, v18, v4

    if-eqz v14, :cond_7

    if-eqz v6, :cond_6

    .line 223
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/CalendarItemData;->isDelivery()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    const/4 v14, 0x3

    .line 225
    invoke-virtual {v1, v14, v6}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 230
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    const-wide/16 v14, 0x68

    and-long v16, v2, v14

    cmp-long v14, v16, v4

    if-eqz v14, :cond_9

    .line 238
    iget-object v14, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

    iget-object v15, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mCallback25:Landroid/view/View$OnClickListener;

    invoke-static {v14, v15, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_9
    and-long v14, v2, v10

    cmp-long v6, v14, v4

    if-eqz v6, :cond_a

    .line 243
    iget-object v6, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->textDay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v8}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    and-long v10, v2, v12

    cmp-long v6, v10, v4

    if-eqz v6, :cond_b

    .line 248
    iget-object v6, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->textDay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    const-wide/16 v8, 0x61

    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_c

    .line 253
    iget-object v2, v1, Lru/rocketbank/core/databinding/ItemCalendarBinding;->textDay:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 162
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final hasPendingBindings()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 50
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 115
    :pswitch_0
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->onChangeDataIsDelivery$3134944c(I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_1
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->onChangeDataBackground$69e17aa2(I)Z

    move-result p1

    return p1

    .line 111
    :pswitch_2
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->onChangeDataDayText$69e17aa2(I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_3
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->onChangeDataTextColor$6c1f40ed(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setData(Lru/rocketbank/core/data/binding/CalendarItemData;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mData:Lru/rocketbank/core/data/binding/CalendarItemData;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setListener(Lru/rocketbank/core/data/binding/CalendarItemClickListener;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mListener:Lru/rocketbank/core/data/binding/CalendarItemClickListener;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/ItemCalendarBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lru/rocketbank/core/data/binding/CalendarItemClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setListener(Lru/rocketbank/core/data/binding/CalendarItemClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Lru/rocketbank/core/data/binding/CalendarItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;->setData(Lru/rocketbank/core/data/binding/CalendarItemData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
