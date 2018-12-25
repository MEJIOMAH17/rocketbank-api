.class public Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemSalaryTariffsBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final background:Landroid/widget/ImageView;

.field private final mCallback50:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

.field private mOperation:Lru/rocketbank/core/model/TariffOperation;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariffText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090069

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 281
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->background:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 47
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 48
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 53
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setRootTag(Landroid/view/View;)V

    .line 57
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mCallback50:Landroid/view/View$OnClickListener;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 1

    .line 301
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 2

    const-string v0, "layout/feed_item_salary_tariffs_0"

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 1

    .line 293
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 3

    const v0, 0x7f0c00bd

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 1

    .line 285
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 1

    const v0, 0x7f0c00bd

    .line 289
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    return-object p0
.end method

.method private onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 168
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

.method private onChangeDataTariffDescription(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

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

.method private onChangeDataTariffText(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 159
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
    .locals 1

    .line 264
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mOperation:Lru/rocketbank/core/model/TariffOperation;

    .line 268
    iget-object p2, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 277
    invoke-interface {p2, p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;->onTariffButtonClicked(Lru/rocketbank/core/model/TariffOperation;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 20

    move-object/from16 v1, p0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 179
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    const-wide/16 v7, 0x57

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x54

    const-wide/16 v10, 0x52

    const-wide/16 v12, 0x51

    if-eqz v7, :cond_6

    and-long v15, v2, v12

    cmp-long v7, v15, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getTariffDescription()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 200
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 205
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v15, v2, v10

    cmp-long v17, v15, v4

    if-eqz v17, :cond_3

    if-eqz v6, :cond_2

    .line 212
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getTariffText()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    const/4 v14, 0x1

    .line 214
    invoke-virtual {v1, v14, v15}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 219
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v6, :cond_4

    .line 226
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 228
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_5

    .line 233
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_5
    const-wide/16 v15, 0x40

    and-long v17, v2, v15

    cmp-long v15, v17, v4

    if-eqz v15, :cond_7

    .line 241
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mCallback50:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_8

    .line 246
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_8
    and-long v8, v2, v12

    cmp-long v6, v8, v4

    if-eqz v6, :cond_9

    .line 251
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    const-wide/16 v6, 0x52

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_a

    .line 256
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

    return-object v0
.end method

.method public getOperation()Lru/rocketbank/core/model/TariffOperation;
    .locals 1

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mOperation:Lru/rocketbank/core/model/TariffOperation;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 73
    monitor-exit p0

    return v0

    .line 75
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

.method public invalidateAll()V
    .locals 2

    .line 63
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 64
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 65
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 142
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->onChangeDataTariffText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->onChangeDataTariffDescription(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;)V
    .locals 6

    .line 110
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 114
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;)V
    .locals 6

    .line 98
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 102
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOperation(Lru/rocketbank/core/model/TariffOperation;)V
    .locals 6

    .line 122
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mOperation:Lru/rocketbank/core/model/TariffOperation;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x3d

    .line 126
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 83
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 86
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3d

    if-ne v0, p1, :cond_2

    .line 89
    check-cast p2, Lru/rocketbank/core/model/TariffOperation;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setOperation(Lru/rocketbank/core/model/TariffOperation;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
